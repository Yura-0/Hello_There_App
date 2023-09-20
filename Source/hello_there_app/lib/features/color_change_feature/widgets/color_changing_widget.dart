import 'package:flutter/material.dart';

class ColorChangingWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final bool isBackgroundColorChanging;

  const ColorChangingWidget({super.key, 
    required this.backgroundColor,
    required this.textColor,
    required this.isBackgroundColorChanging,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      color: backgroundColor,
      alignment: Alignment.center,
        child: AnimatedDefaultTextStyle(
          duration: const Duration(seconds: 1),
          style: TextStyle(
            fontSize: 40.0,
            color: textColor,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          child: const Text('Hello there'),
        ),
    );
  }
}