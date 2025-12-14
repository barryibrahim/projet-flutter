import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('À propos', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SizedBox(height: 20),
          Text("Epreuve E6", style: TextStyle(fontSize: 20)),
          Text("Version 3.27.3"),
          Text("Développée par"),
          Text("IBRAHIMA"),
        ],
      ),
    );
  }
}
