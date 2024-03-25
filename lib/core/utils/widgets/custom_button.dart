import 'package:bookly_app/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.bakcgroundColor,
    required this.textColor,
    required this.text,
    this.borderRadius,
    this.fontSize,
  });

  final Color bakcgroundColor;
  final BorderRadius? borderRadius;
  final Color textColor;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: bakcgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(20),
            )),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
