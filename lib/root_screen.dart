import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// {@template root_screen}
/// RootScreen widget.
/// {@endtemplate}
class RootScreen extends StatelessWidget {
  /// {@macro root_screen}
  const RootScreen({
    super.key,
    this.path = '/a',
    required this.label,
    // ignore: unused_element
  });

  final String? path;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Root Screen for $label',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Navigate to the internal screen
              context.go('$path');
            },
            child: const Text('Go to Internal Screen'),
          ),
        ],
      ),
    );
  }
}
