import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.width = 202,
    this.height = 138,
  });

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Image.asset(
        AppAssets.logo,
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }
}