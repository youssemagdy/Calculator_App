import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  const MyButton({
    Key? key,
    this.color,
    this.textColor,
    required this.buttonText,
    this.buttonTabbed
  }) : super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final color;
  // ignore: prefer_typing_uninitialized_variables
  final textColor;
  final String buttonText;
  // ignore: prefer_typing_uninitialized_variables
  final buttonTabbed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonTabbed,
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            color: color,
            child: Center(
              child: Text(
                buttonText,
                style: TextStyle(
                  color: textColor,
                  fontSize: 25,
                  fontWeight: FontWeight.w600
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
