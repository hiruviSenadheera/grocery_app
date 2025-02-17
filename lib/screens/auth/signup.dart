import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/screens/auth/login.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/helpers/helpers.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
          
                //child 1
                const CustomText(
                  "Signup",
                  fontSize: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
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
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: (){
                      Helpers.navigateTo(context, Login());
                    },
                    child: const CustomText(
                      "Already have an account?",
                      fontWeight: FontWeight.w500,
                      ),
                  ),
                  ),
        
                const SizedBox(height: 24,),
        
                //child 7
                CustomButton(
                  text: "Signup",
                  onTap: (){},
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

