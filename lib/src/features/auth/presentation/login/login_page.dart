import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../main.dart';
import '../../../../core/common/widgets/form_field_widget.dart';
import '../../../../core/common/widgets/main_button_widget.dart';
import '../../../../core/config/route_name.dart';
import '../../../../core/helper/helper_function.dart';
import '../../../../core/helper/shared_preferences_helper.dart';
import '../../../../di/injector.dart';
import 'bloc/login_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final prefs = sl<SharedPreferencesHelper>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context);
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () => null,
              error: (value) => HelperFunction.snackBar(
                context: context,
                message: value.message,
              ),
              success: (value) {
                prefs.setToken(value.authToken);
                context.goNamed(RouteName.LIST_STORY);
              },
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              loading: (_) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
              orElse: () => Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              l?.welcome ?? '',
                              style: const TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            FormFieldWidget(
                              controller: emailController,
                              hintText: l?.hintInputEmail,
                              maxLines: 1,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              preffixIcon: const Icon(Icons.email_rounded),
                              validator: (value) {
                                if (value?.isEmpty == true) {
                                  return l?.errEmailEmpty;
                                }
                
                                return null;
                              },
                            ),
                            const SizedBox(height: 10.0),
                            BlocSelector<LoginBloc, LoginState, bool>(
                              selector: (state) {
                                return state.maybeMap(
                                  orElse: () => false,
                                  isTextObscured: (value) =>
                                      value.isObscure ? true : false,
                                );
                              },
                              builder: (context, state) {
                                return FormFieldWidget(
                                  controller: passwordController,
                                  hintText: l?.hintInputPassword,
                                  maxLines: 1,
                                  obscureText: !state,
                                  preffixIcon: const Icon(Icons.lock_rounded),
                                  suffixIcon: IconButton(
                                    onPressed: () {
                                      context.read<LoginBloc>().add(
                                            LoginEvent.isTextObscured(
                                              isObscure: !state,
                                            ),
                                          );
                                    },
                                    icon: state
                                        ? const Icon(Icons.visibility_rounded)
                                        : const Icon(Icons.visibility_off_rounded),
                                  ),
                                  validator: (value) {
                                    if ((value?.length ?? 0) <= 8) {
                                      return l?.errMinimPassLength('8');
                                    } else if (value?.isEmpty == true) {
                                      return l?.errPassEmpty;
                                    }
                
                                    return null;
                                  },
                                );
                              },
                            ),
                            const SizedBox(height: 30.0),
                            Center(
                              child: MainButtonWidget(
                                onPressed: () {
                                  if (formKey.currentState?.validate() == true) {
                                    context.read<LoginBloc>().add(
                                      LoginEvent.loginUser(
                                        email: emailController.value.text,
                                        password: passwordController.value.text,
                                      ),
                                    );
                                  }
                                },
                                text: l?.login ?? '',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 15.0,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Divider(),
                            Center(
                              child: RichText(
                                text: TextSpan(
                                  text: l?.dontHaveAccount,
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: l?.signUp,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          context.pushNamed(RouteName.REGISTER);
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
