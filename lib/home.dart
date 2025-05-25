import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // SizedBox, Expanded, Flexible, Spacer, Divider
            ElevatedButton(
              onPressed: () {
                context.go('/a');
              },
              child: const Text('Go to Screen A'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/b');
              },
              child: const Text('Go to Screen B'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/c');
              },
              child: const Text('Go to Screen C'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/a/internal');
              },
              child: const Text('Go to Screen A Internal'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/b/internal');
              },
              child: const Text('Go to Screen B Internal'),
            ),
            ElevatedButton(
              onPressed: () {
                context.go('/c/internal');
              },
              child: const Text('Go to Screen C Internal'),
            ),
          ],
        ),
      ),
    );
  }
}
