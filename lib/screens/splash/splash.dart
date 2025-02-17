import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
      
            //child 1
            Image.asset(
              AppAssets.logo,
              width: 331,
              height: 225,
              fit: BoxFit.fill,
            ),
      
            const SizedBox(height: 72,),
      
            //child 2
            const Text(
              "Shop Your Daily \nNecessary",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor
              )
              ),
      
          ],
        ),
      ),
    );
  }
}