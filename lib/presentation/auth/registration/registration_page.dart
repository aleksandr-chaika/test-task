import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/di/injection.dart';
import '../../../core/router/app_router.dart';
import '../../../resources/colors.dart';
import '../../../resources/localization/app_localization.dart';
import '../../../resources/text_styles.dart';
import '../../common/widgets/app_button.dart';
import '../../common/widgets/app_text_field.dart';
import '../../common/widgets/gradient_background.dart';
import 'bloc/registration_bloc.dart';
import 'bloc/registration_events.dart';
import 'bloc/registration_states.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RegistrationBloc>(),
      child: const _RegistrationView(),
    );
  }
}

class _RegistrationView extends StatefulWidget {
  const _RegistrationView();

  @override
  State<_RegistrationView> createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<_RegistrationView>
    with SingleTickerProviderStateMixin {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  late AnimationController _animationController;
  late List<Animation<double>> _fadeAnimations;
  late List<Animation<Offset>> _slideAnimations;

  static const _itemCount = 7;
  static const _staggerDelay = 0.08;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    _fadeAnimations = List.generate(_itemCount, (index) {
      final start = index * _staggerDelay;
      final end = start + 0.35;
      return Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(start, end.clamp(0.0, 1.0), curve: Curves.easeOut),
        ),
      );
    });

    _slideAnimations = List.generate(_itemCount, (index) {
      final start = index * _staggerDelay;
      final end = start + 0.35;
      return Tween<Offset>(
        begin: const Offset(0, 0.3),
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(start, end.clamp(0.0, 1.0), curve: Curves.easeOut),
        ),
      );
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Widget _buildAnimatedItem(int index, Widget child) {
    return FadeTransition(
      opacity: _fadeAnimations[index],
      child: SlideTransition(
        position: _slideAnimations[index],
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegistrationBloc, RegistrationState>(
      listener: (context, state) {
        if (state.isSuccess) {
          context.go(AppRoutes.gallery);
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    children: [
                      _buildAnimatedItem(
                        0,
                        IconButton(
                          onPressed: () => context.pop(),
                          icon: const Icon(
                            Icons.arrow_back_ios_new,
                            color: AppColors.textPrimary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        _buildAnimatedItem(
                          1,
                          Text(
                            AppLocalization.registration,
                            style: AppTextStyles.screenTitle,
                          ),
                        ),
                        const SizedBox(height: 40),
                        _buildAnimatedItem(
                          2,
                          AppTextField(
                            label: AppLocalization.name,
                            hint: AppLocalization.nameHint,
                            controller: _nameController,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              context.read<RegistrationBloc>().add(
                                  RegistrationEvent.nameChanged(value));
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildAnimatedItem(
                          3,
                          AppTextField(
                            label: AppLocalization.email,
                            hint: AppLocalization.emailHintAlt,
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              context.read<RegistrationBloc>().add(
                                  RegistrationEvent.emailChanged(value));
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildAnimatedItem(
                          4,
                          AppTextField(
                            label: AppLocalization.password,
                            hint: AppLocalization.passwordLength,
                            controller: _passwordController,
                            obscureText: true,
                            textInputAction: TextInputAction.next,
                            onChanged: (value) {
                              context.read<RegistrationBloc>().add(
                                  RegistrationEvent.passwordChanged(value));
                            },
                          ),
                        ),
                        const SizedBox(height: 20),
                        _buildAnimatedItem(
                          5,
                          AppTextField(
                            label: AppLocalization.confirmPassword,
                            hint: AppLocalization.passwordLength,
                            controller: _confirmPasswordController,
                            obscureText: true,
                            textInputAction: TextInputAction.done,
                            onChanged: (value) {
                              context.read<RegistrationBloc>().add(
                                  RegistrationEvent.confirmPasswordChanged(
                                      value));
                            },
                            onEditingComplete: _submit,
                          ),
                        ),
                        const SizedBox(height: 48),
                        _buildAnimatedItem(
                          6,
                          BlocBuilder<RegistrationBloc, RegistrationState>(
                            buildWhen: (prev, curr) =>
                                prev.isLoading != curr.isLoading,
                            builder: (context, state) {
                              return AppButton(
                                text: AppLocalization.registerButton,
                                isLoading: state.isLoading,
                                onPressed: _submit,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                            height:
                                MediaQuery.of(context).viewInsets.bottom + 32),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    context
        .read<RegistrationBloc>()
        .add(const RegistrationEvent.registerSubmitted());
  }
}
