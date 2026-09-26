import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Family Asset Tracker',
                style: TextStyle(fontSize: 24),
              ),
              const Text(
                'Track. Manage. Grow Together.',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: const Text('Sign Up')),
            ],
          ),
          );
        },
      ),
    );
  }
}
