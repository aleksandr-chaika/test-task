import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../core/di/injection.dart';
import '../../core/router/app_router.dart';
import '../../domain/entity/drawing_entity.dart';
import '../../resources/colors.dart';
import '../../resources/localization/app_localization.dart';
import '../../resources/text_styles.dart';
import '../common/dialogs/confirm_dialog.dart';
import '../common/widgets/app_button.dart';
import '../common/widgets/gradient_background.dart';
import '../common/widgets/skeleton_loader.dart';
import '../common/widgets/svg_image.dart';
import '../common/widgets/tap_scale_widget.dart';
import 'bloc/gallery_bloc.dart';
import 'bloc/gallery_events.dart';
import 'bloc/gallery_states.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<GalleryBloc>()..add(const GalleryEvent.started()),
      child: const _GalleryView(),
    );
  }
}

class _GalleryView extends StatelessWidget {
  const _GalleryView();

  @override
  Widget build(BuildContext context) {
    return BlocListener<GalleryBloc, GalleryState>(
      listener: (context, state) {
        state.whenOrNull(
          loggedOut: () => context.go(AppRoutes.login),
          error: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
                backgroundColor: AppColors.error,
              ),
            );
          },
        );
      },
      child: Scaffold(
        body: GradientBackground(
          child: SafeArea(
            child: Column(
              children: [
                _buildAppBar(context),
                Expanded(
                  child: BlocBuilder<GalleryBloc, GalleryState>(
                    builder: (context, state) {
                      return state.when(
                        initial: () => const SizedBox.shrink(),
                        loading: () => const GallerySkeletonLoader(),
                        loaded: (drawings) => _GalleryGrid(drawings: drawings),
                        empty: () => const _EmptyState(),
                        error: (_) => const _ErrorState(),
                        loggedOut: () => const SizedBox.shrink(),
                      );
                    },
                  ),
                ),
                _buildBottomButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          IconButton(
            onPressed: () => _showLogoutDialog(context),
            icon: const Icon(
              Icons.logout,
              size: 24,
              color: AppColors.error,
            ),
          ),
          const Expanded(
            child: Text(
              AppLocalization.gallery,
              style: AppTextStyles.appBarTitle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(width: 48),
        ],
      ),
    );
  }

  Widget _buildBottomButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: AppButton(
        text: AppLocalization.create,
        onPressed: () async {
          final result = await context.push<bool>(AppRoutes.editor);
          if (result == true && context.mounted) {
            context.read<GalleryBloc>().add(const GalleryEvent.refreshRequested());
          }
        },
      ),
    );
  }

  Future<void> _showLogoutDialog(BuildContext context) async {
    final confirmed = await ConfirmDialog.show(
      context: context,
      title: AppLocalization.logout,
      message: AppLocalization.logoutConfirm,
      isDangerous: true,
    );

    if (confirmed == true && context.mounted) {
      context.read<GalleryBloc>().add(const GalleryEvent.logoutRequested());
    }
  }
}

class _GalleryGrid extends StatefulWidget {
  final List<DrawingEntity> drawings;

  const _GalleryGrid({required this.drawings});

  @override
  State<_GalleryGrid> createState() => _GalleryGridState();
}

class _GalleryGridState extends State<_GalleryGrid> {
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<GalleryBloc>().add(const GalleryEvent.refreshRequested());
      },
      child: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1,
        ),
        itemCount: widget.drawings.length,
        itemBuilder: (context, index) {
          return _AnimatedGalleryItem(
            key: ValueKey(widget.drawings[index].id),
            index: index,
            drawing: widget.drawings[index],
            onUpdated: () {
              context.read<GalleryBloc>().add(const GalleryEvent.refreshRequested());
            },
          );
        },
      ),
    );
  }
}

class _AnimatedGalleryItem extends StatefulWidget {
  final int index;
  final DrawingEntity drawing;
  final VoidCallback? onUpdated;

  const _AnimatedGalleryItem({
    super.key,
    required this.index,
    required this.drawing,
    this.onUpdated,
  });

  @override
  State<_AnimatedGalleryItem> createState() => _AnimatedGalleryItemState();
}

class _AnimatedGalleryItemState extends State<_AnimatedGalleryItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );

    Future.delayed(Duration(milliseconds: widget.index * 50), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: _GalleryItem(
          drawing: widget.drawing,
          onUpdated: widget.onUpdated,
        ),
      ),
    );
  }
}

class _GalleryItem extends StatelessWidget {
  final DrawingEntity drawing;
  final VoidCallback? onUpdated;

  const _GalleryItem({required this.drawing, this.onUpdated});

  @override
  Widget build(BuildContext context) {
    return TapScaleWidget(
      onTap: () async {
        final result = await context.push<bool>(AppRoutes.editor, extra: drawing.id);
        if (result == true && context.mounted) {
          onUpdated?.call();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.border),
        ),
        clipBehavior: Clip.antiAlias,
        child: _buildImage(),
      ),
    );
  }

  Widget _buildImage() {
    try {
      final bytes = base64Decode(drawing.thumbnailBase64);
      return Image.memory(
        bytes,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => _buildPlaceholder(),
      );
    } catch (e) {
      return _buildPlaceholder();
    }
  }

  Widget _buildPlaceholder() {
    return Container(
      color: AppColors.surface,
      child: const Center(
        child: Icon(
          Icons.image,
          size: 48,
          color: AppColors.textSecondary,
        ),
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  const _EmptyState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgImage.icon('gallery', size: 80, color: AppColors.textSecondary),
          const SizedBox(height: 24),
          const Text(
            AppLocalization.emptyGallery,
            style: AppTextStyles.h3,
          ),
          const SizedBox(height: 8),
          const Text(
            AppLocalization.emptyGalleryHint,
            style: AppTextStyles.bodyMedium,
          ),
        ],
      ),
    );
  }
}

class _ErrorState extends StatelessWidget {
  const _ErrorState();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.error_outline,
            size: 64,
            color: AppColors.error,
          ),
          const SizedBox(height: 16),
          Text(
            AppLocalization.errorLoadFailed,
            style: AppTextStyles.bodyMedium.copyWith(color: AppColors.error),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              context
                  .read<GalleryBloc>()
                  .add(const GalleryEvent.refreshRequested());
            },
            child: const Text(AppLocalization.retry),
          ),
        ],
      ),
    );
  }
}
