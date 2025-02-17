import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class BottomNavTile extends StatelessWidget {
  const BottomNavTile({
    super.key,
    required this.isActive,
    required this.icon,
    required this.onTap,
  });

  final bool isActive;
  final IconData icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap, 
      icon: Icon(
        icon,
        size: 33,
        color: isActive? AppColors.primaryColor:AppColors.ashColor,
      )
    );
  }
}