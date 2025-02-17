import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/custom_textfield.dart';
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
        child: SingleChildScrollView(
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
                const CustomTextfield(
                  hintText: "Enter your name here",
                  labelText: "Name",
                ),
        
                const SizedBox(height: 7,),
        
                //child 4
                const CustomTextfield(
                  hintText: "Enter your email here",
                  labelText: "Email",
                ),
        
                const SizedBox(height: 7,),
        
                //child 5
                const CustomTextfield(
                  hintText: "Enter your password here",
                  labelText: "Password",
                  isObscure: true,
                ),
        
                const SizedBox(height: 12,),
        
                //child 6
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
        
                const SizedBox(height: 24,),
        
                //child 7
                Container(
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
                  child: const Text(
                    "SignUp",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}


