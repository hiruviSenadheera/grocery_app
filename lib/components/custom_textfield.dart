import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isObscure = false,
  });

  final String hintText;
  final String labelText;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
        boxShadow: 
        [
          BoxShadow(
            color: AppColors.ashColor.withOpacity(.3),
            offset: const Offset(0, 0),
            blurRadius: 10,
          ),
        ]
      ),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
              color: AppColors.ashColor,
            ),
          label: Text(
            labelText,
            style: const TextStyle(
              color: AppColors.ashColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: AppColors.primaryColor)
          )
        ),
      ),
    );
  }
}
