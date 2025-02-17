import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/custom_textfield.dart';
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
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
        
              //child 1
              Text(
                "Signup",
                style: TextStyle(
                  fontSize: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold
                ),
              ),
        
              SizedBox(height: 41,),
        
              //child 2
              AppLogo(),

              SizedBox(height: 30,),
        
              //child 3
              CustomTextfield(
                hintText: "Enter your name here",
                labelText: "Name",
              ),

              SizedBox(height: 7,),

              //child 4
              CustomTextfield(
                hintText: "Enter your email here",
                labelText: "Email",
              ),

              SizedBox(height: 7,),

              //child 5
              CustomTextfield(
                hintText: "Enter your password here",
                labelText: "Password",
                isObscure: true,
              ),

              SizedBox(height: 12,),

              //child 6
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(height: 12,),

              //child 7
          
              
            ],
          ),
        ),
      ),
    );
  }
}


