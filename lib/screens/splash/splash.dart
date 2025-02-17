import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/screens/auth/signup.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {

    //delay for 2 seconds and navigate to the signup
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (context) => const Signup()
        )
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
      
            //child 1
            const AppLogo(
              width: 331,
              height: 225,
            ),
      
            const SizedBox(height: 72,),
      
            //child 2
            FadeInUp(
              child: const CustomText(
                "Shop Your Daily \nNecessary",
                fontSize: 30,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
      
          ],
        ),
      ),
    );
  }
}

