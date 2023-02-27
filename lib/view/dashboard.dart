import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        title: Text(
          "ONBOARDING DEMO",
          style: TextStyle(color: Color.fromARGB(255, 15, 39, 80)),
        ),
      ),
    );
  }
}
