import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/widgets/form_field_widget.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BlocConsumer<LoginBloc, LoginState>(
          listener: (context, state) {
            switch (state) {
              case LoginError value:
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(value.message ?? ''),
                    duration: const Duration(seconds: 3),
                    showCloseIcon: true,
                  ),
                );
                break;
              case LoginSuccess value:
                prefs.setToken(value.authToken);
                context.goNamed('liststory');
                break;
            }
          },
          builder: (context, state) {
            switch (state) {
              case LoginLoading _:
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              default:
                return Column(
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
                            const Text(
                              'Welcome',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            FormFieldWidget(
                              controller: emailController,
                              hintText: 'Input your email address',
                              maxLines: 1,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              preffixIcon: const Icon(Icons.email_rounded),
                              validator: (value) {
                                return null;
                              },
                            ),
                            const SizedBox(height: 10.0),
                            BlocSelector<LoginBloc, LoginState, bool>(
                              selector: (state) {
                                if (state is LoginObscureText) {
                                  return state.isObscure ? true : false;
                                }

                                return false;
                              },
                              builder: (context, state) {
                                return FormFieldWidget(
                                  controller: passwordController,
                                  hintText: 'Input your password',
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
                                        : const Icon(
                                            Icons.visibility_off_rounded),
                                  ),
                                  validator: (value) {
                                    if (value!.length <= 8) {
                                      return 'Password must be at least 8 characters';
                                    } else if (value.isEmpty) {
                                      return 'Password cannot be empty';
                                    }
                                    return null;
                                  },
                                );
                              },
                            ),
                            const SizedBox(height: 30.0),
                            Center(
                              child: ElevatedButton(
                                onPressed: () async {
                                  context.read<LoginBloc>().add(
                                        LoginEvent.loginUser(
                                          email: emailController.value.text,
                                          password: passwordController.value.text,
                                        ),
                                      );
                                },
                                style: ButtonStyle(
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                child: const Text('Login'),
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
                                  text: 'Don`t have an account ? ',
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Sign Up',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          context.goNamed('register');
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
                );
            }
          },
        ),
      ),
    );
  }
}
