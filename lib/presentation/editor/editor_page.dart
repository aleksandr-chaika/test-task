import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/di/injection.dart';
import '../../resources/colors.dart';
import '../../resources/localization/app_localization.dart';
import '../../resources/text_styles.dart';
import '../common/widgets/gradient_background.dart';
import '../common/widgets/svg_image.dart';
import 'bloc/editor_bloc.dart';
import 'bloc/editor_events.dart';
import 'bloc/editor_states.dart';
import 'view/drawing_canvas.dart';

class EditorPage extends StatelessWidget {
  final String? drawingId;

  const EditorPage({super.key, this.drawingId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<EditorBloc>()..add(EditorEvent.started(drawingId: drawingId)),
      child: const _EditorView(),
    );
  }
}

class _EditorView extends StatefulWidget {
  const _EditorView();

  @override
  State<_EditorView> createState() => _EditorViewState();
}

class _EditorViewState extends State<_EditorView> {
  final GlobalKey<DrawingCanvasState> _canvasKey = GlobalKey<DrawingCanvasState>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<EditorBloc, EditorState>(
      listener: (context, state) {
        if (state.isSaved) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(AppLocalization.saveSuccess),
              backgroundColor: AppColors.success,
            ),
          );
          context.pop(true);
        }
        if (state.errorMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage!),
              backgroundColor: AppColors.error,
            ),
          );
        }
      },
      child: Scaffold(
        body: GradientBackground(
          child: SafeArea(
            child: Column(
              children: [
                _buildAppBar(context),
                _buildToolbar(context),
                Expanded(child: _CanvasArea(canvasKey: _canvasKey)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.arrow_back_ios, color: AppColors.textPrimary),
          ),
          Expanded(
            child: BlocBuilder<EditorBloc, EditorState>(
              buildWhen: (prev, curr) =>
                  prev.existingDrawingId != curr.existingDrawingId,
              builder: (context, state) {
                return Text(
                  state.existingDrawingId != null
                      ? AppLocalization.editing
                      : AppLocalization.newImage,
                  style: AppTextStyles.appBarTitle,
                  textAlign: TextAlign.center,
                );
              },
            ),
          ),
          BlocBuilder<EditorBloc, EditorState>(
            buildWhen: (prev, curr) => prev.isSaving != curr.isSaving,
            builder: (context, state) {
              if (state.isSaving) {
                return const Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: AppColors.primary,
                    ),
                  ),
                );
              }
              return IconButton(
                onPressed: () => _showSaveDialog(context),
                icon: const Icon(Icons.check, color: AppColors.primary),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildToolbar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _ToolButton(
            icon: 'download',
            onPressed: () {
              context.read<EditorBloc>().add(const EditorEvent.exportRequested());
            },
          ),
          _ToolButton(
            icon: 'gallery_round',
            onPressed: () => _importImage(context),
          ),
          BlocBuilder<EditorBloc, EditorState>(
            buildWhen: (prev, curr) => prev.currentTool != curr.currentTool,
            builder: (context, state) {
              return _ToolButton(
                icon: 'pen',
                isActive: state.currentTool == EditorTool.brush,
                onPressed: () {
                  context.read<EditorBloc>().add(const EditorEvent.brushSelected());
                },
              );
            },
          ),
          BlocBuilder<EditorBloc, EditorState>(
            buildWhen: (prev, curr) => prev.currentTool != curr.currentTool,
            builder: (context, state) {
              return _ToolButton(
                icon: 'eraser',
                isActive: state.currentTool == EditorTool.eraser,
                onPressed: () {
                  context.read<EditorBloc>().add(const EditorEvent.eraserSelected());
                },
              );
            },
          ),
          _ToolButton(
            icon: 'palette',
            onPressed: () => _showColorPicker(context),
          ),
        ],
      ),
    );
  }

  Future<void> _importImage(BuildContext context) async {
    final bloc = context.read<EditorBloc>();
    final picker = ImagePicker();
    final image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      final bytes = await image.readAsBytes();
      bloc.add(EditorEvent.imageImported(bytes));
    }
  }

  Future<void> _showColorPicker(BuildContext context) async {
    final bloc = context.read<EditorBloc>();

    await showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => _ColorPickerSheet(
        currentColor: bloc.state.currentColor,
        onColorSelected: (color) {
          bloc.add(EditorEvent.colorChanged(color));
          bloc.add(const EditorEvent.brushSelected());
          Navigator.pop(context);
        },
      ),
    );
  }

  Future<void> _showSaveDialog(BuildContext context) async {
    final controller = TextEditingController(
      text: 'Рисунок ${DateTime.now().millisecondsSinceEpoch}',
    );

    final title = await showGeneralDialog<String>(
      context: context,
      barrierDismissible: true,
      barrierLabel: 'Save Dialog',
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return ScaleTransition(
          scale: CurvedAnimation(
            parent: animation,
            curve: Curves.easeOutBack,
          ),
          child: FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Material(
            color: Colors.transparent,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(AppLocalization.save, style: AppTextStyles.h3),
                  const SizedBox(height: 16),
                  TextField(
                    controller: controller,
                    style: AppTextStyles.input,
                    decoration: const InputDecoration(
                      hintText: 'Название',
                      hintStyle: AppTextStyles.inputHint,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text(AppLocalization.cancel),
                      ),
                      const SizedBox(width: 8),
                      TextButton(
                        onPressed: () => Navigator.pop(context, controller.text),
                        child: const Text(AppLocalization.save),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    if (title != null && title.isNotEmpty && context.mounted) {
      final canvasState = _canvasKey.currentState;
      final bloc = context.read<EditorBloc>();
      final size = canvasState?.canvasSize;

      Uint8List? renderedImage;
      if (size != null && size.width > 0 && size.height > 0) {
        renderedImage = await DrawingCanvas.renderToImage(
          strokes: bloc.state.strokes,
          size: size,
          backgroundImage: canvasState?.backgroundImage,
        );
      }

      if (context.mounted) {
        bloc.add(EditorEvent.saveRequested(title, renderedImage: renderedImage));
      }
    }
  }
}

class _CanvasArea extends StatefulWidget {
  final GlobalKey<DrawingCanvasState> canvasKey;

  const _CanvasArea({required this.canvasKey});

  @override
  State<_CanvasArea> createState() => _CanvasAreaState();
}

class _CanvasAreaState extends State<_CanvasArea> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, state) {
        if (state.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.primary),
          );
        }

        return DrawingCanvas(
          key: widget.canvasKey,
          strokes: state.strokes,
          currentColor: state.currentColor,
          brushSize: state.brushSize,
          currentTool: state.currentTool,
          backgroundImage: state.backgroundImage,
          onStrokeAdded: (stroke) {
            context.read<EditorBloc>().add(EditorEvent.strokeAdded(stroke));
          },
          onStrokeUpdated: (_) {},
        );
      },
    );
  }
}

class _ToolButton extends StatelessWidget {
  final String icon;
  final bool isActive;
  final VoidCallback onPressed;

  const _ToolButton({
    required this.icon,
    this.isActive = false,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          color: isActive ? AppColors.surface : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: isActive ? Border.all(color: AppColors.primary) : null,
        ),
        child: Center(
          child: SvgImage.icon(
            icon,
            size: 24,
            color: isActive ? AppColors.primary : AppColors.textPrimary,
          ),
        ),
      ),
    );
  }
}

class _ColorPickerSheet extends StatelessWidget {
  final Color currentColor;
  final ValueChanged<Color> onColorSelected;

  const _ColorPickerSheet({
    required this.currentColor,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(AppLocalization.colorPicker, style: AppTextStyles.h3),
          const SizedBox(height: 24),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            children: AppColors.brushPalette.map((color) {
              final isSelected = color == currentColor;
              return GestureDetector(
                onTap: () => onColorSelected(color),
                child: Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected ? AppColors.primary : Colors.transparent,
                      width: 3,
                    ),
                    boxShadow: [
                      if (isSelected)
                        BoxShadow(
                          color: AppColors.primary.withValues(alpha: 0.5),
                          blurRadius: 8,
                        ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
