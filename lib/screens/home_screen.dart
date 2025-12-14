import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  void goToLogin() {
    Navigator.pushNamed(context, '/login');
  }

  void goToRegister() {
    Navigator.pushNamed(context, '/register');
  }

  void goToAbout() {
    Navigator.pushNamed(context, '/about');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forum', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: goToLogin,
              child: const Text("Connexion"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: goToRegister,
              child: const Text("Inscription"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: goToAbout,
              child: const Text("À propos"),
            ),
          ],
        ),
      ),
    );
  }
}
