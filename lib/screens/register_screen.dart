import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../widgets/bottom_menu.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Noisekloud - Register',
              style: TextStyle(
                fontSize: 32,
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 32),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: colorScheme.surface,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.person),
                labelStyle: TextStyle(color: colorScheme.primary),
                hintText: 'Username',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: colorScheme.surface,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock),
                labelStyle: TextStyle(color: colorScheme.primary),
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: colorScheme.surface,
                border: const OutlineInputBorder(),
                prefixIcon: const Icon(Icons.lock),
                labelStyle: TextStyle(color: colorScheme.primary),
                hintText: 'Confirm Password',
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                backgroundColor: colorScheme.secondary,
              ),
              child: const Text('Register', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {
                context.push("/login");
              },
              child: Text(
                'Already have an account? Login!',
                style: TextStyle(
                  color: colorScheme.onSecondary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
