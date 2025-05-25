import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({Key? key, required this.tabindex}) : super(key: key);
  static const String path = '/a';
  static const String name = 'ScreenA';
  final int tabindex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Screen A', style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.go('/a/internal');
              },
              child: const Text('Go next'),
            ),
          ],
        ),
      ),
    );
  }
}
