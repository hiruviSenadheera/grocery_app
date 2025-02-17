import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class CustomText extends StatelessWidget {
  const CustomText(
    this.text,
  {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
  });

  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Shop Your Daily \nNecessary",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor
      )
      );
  }
}