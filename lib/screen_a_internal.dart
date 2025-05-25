import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenAInternal extends StatelessWidget {
  const ScreenAInternal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Screen A Internal',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/b/internal');
              },
              child: const Text('Go To B Internal'),
            ),
          ],
        ),
      ),
    );
  }
}
