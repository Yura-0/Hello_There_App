import 'package:flutter/material.dart';
import 'package:hello_there_app/features/color_change_feature/view/color_change_screen.dart';

class HelloThereApp extends StatelessWidget {
  const HelloThereApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorChangeScreen(),
    );
  }
}