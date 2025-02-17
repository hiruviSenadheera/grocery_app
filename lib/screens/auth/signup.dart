import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [

            //child 1
            const Text(
              "Signup",
              style: TextStyle(
                fontSize: 25,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold
              ),
            ),

            const SizedBox(height: 41,),

            //child 2
            AppLogo(),
          ],
        ),
      ),
    );
  }
}

