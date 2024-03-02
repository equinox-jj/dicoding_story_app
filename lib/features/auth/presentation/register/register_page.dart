import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/common/widgets/form_field_widget.dart';
import 'bloc/register_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            switch (state) {
              case RegisterError value:
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(value.message ?? ''),
                    duration: const Duration(seconds: 3),
                    showCloseIcon: true,
                  ),
                );
                break;
              case RegisterSuccess _:
                context.pop();
                break;
              default:
            }
          },
          builder: (context, state) {
            switch (state) {
              case RegisterLoading _:
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
                              'Create Account',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            FormFieldWidget(
                              controller: usernameController,
                              hintText: 'Input your username',
                              maxLines: 1,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              preffixIcon: const Icon(Icons.person_4_rounded),
                              validator: (value) {
                                return null;
                              },
                            ),
                            const SizedBox(height: 10.0),
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
                            BlocSelector<RegisterBloc, RegisterState, bool>(
                              selector: (state) {
                                if (state is RegisterObscureText) {
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
                                      context.read<RegisterBloc>().add(
                                            RegisterEvent.isTextObscured(
                                              isObscure: !state,
                                            ),
                                          );
                                    },
                                    icon: state
                                        ? const Icon(Icons.visibility_rounded)
                                        : const Icon(Icons.visibility_off_rounded),
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
                                onPressed: () {
                                  context.read<RegisterBloc>().add(
                                        RegisterEvent.registerUser(
                                          name: usernameController.value.text,
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
                                child: const Text('Sign Up'),
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
                                  text: 'Already have an account ? ',
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: 'Log In',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.blue,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          context.pop();
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
