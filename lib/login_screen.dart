import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// {@template login_screen}
/// LoginScreen widget.
/// {@endtemplate}
class LoginScreen extends StatelessWidget {
  /// {@macro login_screen}
  const LoginScreen({
    super.key, // ignore: unused_element
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Screen',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the root screen
                context.go('/');
              },
              child: const Text('Go to Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
