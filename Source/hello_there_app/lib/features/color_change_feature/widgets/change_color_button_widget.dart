import 'package:flutter/material.dart';

class ChangeColorButton extends StatelessWidget {
  final Function()? onButtonPressed;
  final bool isBackgroundColorChanging;

  const ChangeColorButton({super.key, 
    required this.onButtonPressed,
    required this.isBackgroundColorChanging,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onButtonPressed,
      backgroundColor:
          isBackgroundColorChanging ? Colors.green : Colors.orange,
      child: const Icon(Icons.color_lens),
    );
  }
}