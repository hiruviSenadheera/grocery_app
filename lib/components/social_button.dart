import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.path,
    required this.onTap,
  });

  final String path;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 34, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.white,
          boxShadow: 
          [
            BoxShadow(
              color: AppColors.ashColor.withOpacity(.4),
              offset: const Offset(0, 2),
              blurRadius: 10,
            ),
          ]
        ),
        child: SvgPicture.asset(
          path
        ),
      ),
    );
  }
}

