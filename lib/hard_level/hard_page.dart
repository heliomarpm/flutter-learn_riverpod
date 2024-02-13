import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_data.dart';

class HardPage extends ConsumerWidget {
  const HardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodIsLight).changeTheme(newValue: true);
              },
              label: const Text("Light"),
              icon: const Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodIsLight).changeTheme(newValue: false);
              },
              label: const Text("Dark"),
              icon: const Icon(Icons.dark_mode),
            ),
          ],
        ),
      ),
    );
  }
}
