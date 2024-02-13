import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod_data.dart';

class EasyPage extends ConsumerWidget {
  const EasyPage({super.key});

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
            // ElevatedButton(
            //   onPressed: () {},
            //   child: const Text("Light"),
            // ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodIsLight.notifier).state = true;
              },
              label: const Text("Light"),
              icon: const Icon(Icons.light_mode),
            ),
            ElevatedButton.icon(
              onPressed: () {
                ref.read(riverpodIsLight.notifier).state = false;
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
