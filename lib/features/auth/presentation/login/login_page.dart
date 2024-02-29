import 'bloc/login_bloc.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/widgets/form_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            state.maybeMap(
              orElse: () => null,
              error: (value) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(value.message),
                  duration: const Duration(seconds: 10),
                  showCloseIcon: true,
                ),
              ),
              success: (value) => context.goNamed('liststory'),
            );
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => Column(
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
                              return state.maybeMap(
                                orElse: () => false,
                                obscureText: (value) =>
                                    value.isObscure ? true : false,
                              );
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
                                          LoginEvent.onObscureText(!state),
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
                                      LoginEvent.onLoginUser(
                                        emailController.value.text,
                                        passwordController.value.text,
                                      ),
                                    );
                              },
                              style: ButtonStyle(
                                shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),
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
              ),
              loading: (value) => const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          },
        ),
      ),
    );
  }
}
