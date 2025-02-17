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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
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
              const AppLogo(),

              const SizedBox(height: 30,),
        
              //child 3
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                  boxShadow: 
                  [
                    BoxShadow(
                      color: AppColors.ashColor.withOpacity(.3),
                      offset: Offset(0, 0),
                      blurRadius: 10,
                    ),
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your name here",
                    hintStyle: const TextStyle(
                        color: AppColors.ashColor,
                      ),
                    label: const Text(
                      "Name",
                      style: TextStyle(
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
              ),

              const SizedBox(height: 5,),

              //child 4
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                  boxShadow: 
                  [
                    BoxShadow(
                      color: AppColors.ashColor.withOpacity(.3),
                      offset: Offset(0, 0),
                      blurRadius: 10,
                    ),
                  ]
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your email here",
                    hintStyle: const TextStyle(
                        color: AppColors.ashColor,
                      ),
                    label: const Text(
                      "Email",
                      style: TextStyle(
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
              ),

              const SizedBox(height: 5,),

              //child 5
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                  boxShadow: 
                  [
                    BoxShadow(
                      color: AppColors.ashColor.withOpacity(.3),
                      offset: Offset(0, 0),
                      blurRadius: 10,
                    ),
                  ]
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password here",
                    hintStyle: const TextStyle(
                        color: AppColors.ashColor,
                      ),
                    label: const Text(
                      "Password",
                      style: TextStyle(
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

