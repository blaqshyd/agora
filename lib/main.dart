// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:agora/chat/presentation/chat.dart';

void main() {
  runApp(const MyApp());
//   runApp(DevicePreview(
//     builder: (context) => const MyApp(),
//     enabled: true,
//   ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agora',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      builder: (context, child) => _UnFocus(child: child!),
      home: const Chat(),
    );
  }
}

//! This class makes sure to unfocus when any part of the screen it tapped
class _UnFocus extends StatelessWidget {
  final Widget child;
  const _UnFocus({
    Key? key,
    required this.child,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: child,
    );
  }
}
