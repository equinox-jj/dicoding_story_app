import 'package:dicoding_story_app/features/auth/presentation/register/bloc/register_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RegisterBloc, RegisterState>(
        builder: (context, state) {
          state.whenOrNull(
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            initial: () => const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Register user'),
              ],
            ),
          );

          return const SizedBox.shrink();
        },
        listener: (context, state) {},
      ),
    );
  }
}
