import '../../../../core/common/widgets/form_field_widget.dart';
import 'bloc/register_bloc.dart';
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
      body: BlocConsumer<RegisterBloc, RegisterState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox.shrink(),
            loading: (value) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            },
            error: (value) => Center(
              child: Text(value.message),
            ),
            initial: (value) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Register User'),
                  FormFieldWidget(
                    onChanged: (value) {
                      usernameController.text = value;
                    },
                  ),
                  FormFieldWidget(
                    onChanged: (value) {
                      emailController.text = value;
                    },
                  ),
                  FormFieldWidget(
                    onChanged: (value) {
                      passwordController.text = value;
                    },
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<RegisterBloc>()
                          .add(RegisterEvent.registerUser(
                            usernameController.text,
                            emailController.text,
                            passwordController.text,
                          ));
                    },
                    child: const Text('Submit'),
                  ),
                ],
              );
            },
          );
        },
        listener: (context, state) {},
      ),
    );
  }
}
