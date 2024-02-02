import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color btnColor;
  final double? width;
  final String? fontFamily;
  final void Function() onPressed;
  const CustomButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.btnColor,
    required this.onPressed,
    this.width,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(btnColor),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(vertical: 15),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontFamily: fontFamily ?? '',
            color: textColor,
          ),
        ),
      ),
    );
  }
}
