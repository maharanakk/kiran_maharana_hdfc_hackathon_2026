import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/init/presentation/bloc/init_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/init/presentation/bloc/init_event.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/init/presentation/bloc/init_state.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/pages/login_page.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/signup/presentation/signup_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => InitialBloc(),

      child: BlocListener<InitialBloc, InitialState>(
        listener: (context, state) {

          if (state is LoginPageState) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginPage(),
              ),
            );
          }

          if (state is SignUpPageState) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignupPage(),
              ),
            );
          }
        },

        child: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome'),
          ),

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton(
                  onPressed: () {
                    context.read<InitialBloc>().add(
                      LoginClicked(),
                    );
                  },
                  child: const Text('Login'),
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    context.read<InitialBloc>().add(
                      SignUpClicked(),
                    );
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}