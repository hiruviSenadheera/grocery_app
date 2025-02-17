import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 259,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: 
          [
            BoxShadow(
              color: AppColors.ashColor.withOpacity(.3),
              offset: const Offset(0, 2),
              blurRadius: 10,
            ),
          ]
        ),
        child: CustomText(
          text,
            color: Colors.white,
            fontSize: 18,                   
        ),
      ),
    );
  }
}


