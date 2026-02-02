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
import 'bloc/login_bloc.dart';
import 'bloc/login_events.dart';
import 'bloc/login_states.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<LoginBloc>(),
      child: const _LoginView(),
    );
  }
}

class _LoginView extends StatefulWidget {
  const _LoginView();

  @override
  State<_LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<_LoginView>
    with SingleTickerProviderStateMixin {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  late AnimationController _animationController;
  late List<Animation<double>> _fadeAnimations;
  late List<Animation<Offset>> _slideAnimations;

  static const _itemCount = 5;
  static const _staggerDelay = 0.1;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _fadeAnimations = List.generate(_itemCount, (index) {
      final start = index * _staggerDelay;
      final end = start + 0.4;
      return Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
          parent: _animationController,
          curve: Interval(start, end.clamp(0.0, 1.0), curve: Curves.easeOut),
        ),
      );
    });

    _slideAnimations = List.generate(_itemCount, (index) {
      final start = index * _staggerDelay;
      final end = start + 0.4;
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
    _emailController.dispose();
    _passwordController.dispose();
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
    return BlocListener<LoginBloc, LoginState>(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),
                  _buildAnimatedItem(
                    0,
                    Text(
                      AppLocalization.login,
                      style: AppTextStyles.screenTitle,
                    ),
                  ),
                  const SizedBox(height: 40),
                  _buildAnimatedItem(
                    1,
                    AppTextField(
                      label: AppLocalization.email,
                      hint: AppLocalization.emailHint,
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      onChanged: (value) {
                        context
                            .read<LoginBloc>()
                            .add(LoginEvent.emailChanged(value));
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildAnimatedItem(
                    2,
                    AppTextField(
                      label: AppLocalization.password,
                      hint: AppLocalization.passwordHint,
                      controller: _passwordController,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      onChanged: (value) {
                        context
                            .read<LoginBloc>()
                            .add(LoginEvent.passwordChanged(value));
                      },
                      onEditingComplete: _submit,
                    ),
                  ),
                  const Spacer(flex: 3),
                  _buildAnimatedItem(
                    3,
                    BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (prev, curr) =>
                          prev.isLoading != curr.isLoading,
                      builder: (context, state) {
                        return AppButton(
                          text: AppLocalization.loginButton,
                          isLoading: state.isLoading,
                          onPressed: _submit,
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildAnimatedItem(
                    4,
                    AppButton(
                      text: AppLocalization.registration,
                      isOutlined: true,
                      onPressed: () => context.push(AppRoutes.registration),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submit() {
    FocusScope.of(context).unfocus();
    context.read<LoginBloc>().add(const LoginEvent.loginSubmitted());
  }
}
