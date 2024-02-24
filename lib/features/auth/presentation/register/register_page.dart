import 'package:dicoding_story_app/core/common/widgets/form_field_widget.dart';
import 'package:dicoding_story_app/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocSelector<RegisterBloc, RegisterState, bool>(
              selector: (state) => state.maybeMap(
                orElse: () => false,
                obscureText: (value) => value.isObscure ? true : false,
              ),
              builder: (context, state) {
                return FormFieldWidget(
                  controller: passwordController,
                  hintText: 'Input your password',
                  maxLines: 1,
                  obscureText: !state,
                  preffixIcon: const Icon(Icons.lock_rounded),
                  suffixIcon: IconButton(
                    onPressed: () {
                      context
                          .read<RegisterBloc>()
                          .add(RegisterEvent.onObscureText(!state));
                    },
                    icon: state
                        ? const Icon(Icons.visibility_rounded)
                        : const Icon(Icons.visibility_off_rounded),
                  ),
                  validator: (value) {
                    return null;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
