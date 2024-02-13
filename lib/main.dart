import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// import 'package:learn_riverpod/easy_level/easy_page.dart';
// import 'package:learn_riverpod/easy_level/riverpod_data.dart';

import 'package:learn_riverpod/hard_level/hard_page.dart';
import 'package:learn_riverpod/hard_level/riverpod_data.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // easy_level
    // Brightness brightness =
    //     ref.watch(riverpodIsLight) ? Brightness.light : Brightness.dark;

    // hard_level
    Brightness brightness =
        ref.watch(riverpodIsLight).isLight ? Brightness.light : Brightness.dark;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Map',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: brightness,
        ),
        useMaterial3: true,
      ),
      // home: const EasyPage(),
      home: const HardPage(),
    );
  }
}
