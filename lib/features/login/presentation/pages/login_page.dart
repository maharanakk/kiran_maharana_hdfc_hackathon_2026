import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_event.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),

      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }

          if (state is NavigateToForgotPin) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (_) => const ForgotPinPage(),
            //   ),
            // );
          }

          if (state is LoginSuccess) {
            // Navigate to Home page
          }
        },

        child: Scaffold(
          appBar: AppBar(
            title: const Text('Login'),
          ),

          body: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [

                const Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 30),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter phone number',
                    prefixIcon: Icon(Icons.phone),
                    border: OutlineInputBorder(),
                  ),

                  onChanged: (value) {
                    context
                        .read<LoginBloc>()
                        .add(PhoneNumberChanged(value));
                  },
                ),

                const SizedBox(height: 20),

                TextField(
                  obscureText: true,
                  keyboardType: TextInputType.number,
                  maxLength: 6,
                  decoration: const InputDecoration(
                    labelText: 'PIN',
                    hintText: 'Enter PIN',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    counterText: '',
                  ),

                  onChanged: (value) {
                    context
                        .read<LoginBloc>()
                        .add(PinChanged(value));
                  },
                ),

                const SizedBox(height: 10),

                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      context
                          .read<LoginBloc>()
                          .add(ForgotPinPressed());
                    },
                    child: const Text('Forgot PIN?'),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<LoginBloc>()
                          .add(LoginButtonPressed());
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}