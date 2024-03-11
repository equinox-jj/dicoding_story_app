import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../main.dart';
import '../../../../core/common/widgets/form_field_widget.dart';
import '../../../../core/common/widgets/main_button_widget.dart';
import '../../../../core/helper/helper_function.dart';
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
    final l = AppLocalizations.of(context);
    final formKey = GlobalKey<FormState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: BlocConsumer<RegisterBloc, RegisterState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () => null,
              error: (value) => HelperFunction.snackBar(
                context: context,
                message: value.message,
              ),
              success: (_) => context.pop(),
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
                              l?.createAccount ?? '',
                              style: const TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 30.0),
                            FormFieldWidget(
                              controller: usernameController,
                              hintText: l?.hintInputUsername,
                              maxLines: 1,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.name,
                              preffixIcon: const Icon(Icons.person_4_rounded),
                              validator: (value) {
                                if (value?.isEmpty == true) {
                                  return l?.errUsernameEmpty;
                                }
                                
                                return null;
                              },
                            ),
                            const SizedBox(height: 10.0),
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
                            BlocSelector<RegisterBloc, RegisterState, bool>(
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
                                      context.read<RegisterBloc>().add(
                                            RegisterEvent.isTextObscured(
                                              isObscure: !state,
                                            ),
                                          );
                                    },
                                    icon: state
                                        ? const Icon(Icons.visibility_rounded)
                                        : const Icon(
                                            Icons.visibility_off_rounded,
                                          ),
                                  ),
                                  validator: (value) {
                                    if ((value?.length ?? 0) < 8) {
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
                                    context.read<RegisterBloc>().add(
                                        RegisterEvent.registerUser(
                                          name: usernameController.value.text,
                                          email: emailController.value.text,
                                          password: passwordController.value.text,
                                        ),
                                      );
                                  }
                                },
                                text: l?.signUp ?? '',
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
                                  text: l?.alreadyHaveAccount,
                                  style: const TextStyle(
                                    color: Colors.black,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: l?.login,
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
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
