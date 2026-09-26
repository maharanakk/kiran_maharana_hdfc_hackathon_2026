import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/dashboard/presentation/page/dashboard_page.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/init/presentation/bloc/init_bloc.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/login/presentation/bloc/login_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => InitialBloc()),
          BlocProvider(create: (context) => LoginBloc()),
        ],
        child: DashboardPage(),
      ),
    );
  }
}
