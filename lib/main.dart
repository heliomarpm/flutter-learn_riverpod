import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:learn_riverpod/easy_level/easy_page.dart';
import 'package:learn_riverpod/easy_level/riverpod_data.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Brightness brightness =
        ref.watch(riverpodIsLight) ? Brightness.light : Brightness.dark;

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
      home: const EasyPage(),
    );
  }
}
