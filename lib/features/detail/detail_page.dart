import 'package:flutter/material.dart';
import 'package:kiran_maharana_hdfc_hackathon_2026/features/setting/setting_page.dart';

class HoldingPage extends StatelessWidget {
  const HoldingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Holding'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Holding Screen',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingsPage(),
                  ),
                );
              },
              child: const Text('Go to Settings'),
            ),
          ],
        ),
      ),
    );
  }
}