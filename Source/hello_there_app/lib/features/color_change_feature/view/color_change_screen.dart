import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hello_there_app/features/color_change_feature/widget_exp.dart';

class ColorChangeScreen extends StatefulWidget {
  const ColorChangeScreen({super.key});

  @override
  _ColorChangeScreenState createState() => _ColorChangeScreenState();
}

class _ColorChangeScreenState extends State<ColorChangeScreen> {
  Color _backgroundColor = Colors.white;
  Color _textColor = Colors.black;
  bool _isBackgroundColorChanging = true;

  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = _generateRandomColor();
    });
  }

  void _changeTextColor() {
    setState(() {
      _textColor = _generateRandomColor();
    });
  }

  Color _generateRandomColor() {
    final random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Color Changer App'),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          if (_isBackgroundColorChanging) {
            _changeBackgroundColor();
          } else {
            _changeTextColor();
          }
        },
        child: ColorChangingWidget(
          backgroundColor: _backgroundColor,
          textColor: _textColor,
          isBackgroundColorChanging: _isBackgroundColorChanging,
        ),
      ),
      floatingActionButton: ChangeColorButton(
        onButtonPressed: () {
          setState(() {
            _isBackgroundColorChanging = !_isBackgroundColorChanging;
          });
        },
        isBackgroundColorChanging: _isBackgroundColorChanging,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
