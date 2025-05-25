import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({Key? key, required this.tabindex}) : super(key: key);
  final int tabindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Screen C', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/c/internal');
              },
              child: const Text('Go next'),
            ),
          ],
        ),
      ),
    );
  }
}
