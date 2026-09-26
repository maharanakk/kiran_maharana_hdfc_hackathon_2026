import 'package:flutter/material.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/init/presentation/page/init_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InitialPage(),
    );
  }
}

