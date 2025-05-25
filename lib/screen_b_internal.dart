import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenBinternal extends StatelessWidget {
  const ScreenBinternal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Screen B Internal',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/a/internal');
              },
              child: const Text('Go To A Internal'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/');
              },
              child: const Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
