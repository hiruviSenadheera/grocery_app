import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/common_back_button.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
                const Align(
                  alignment: Alignment.topLeft,
                  child: CommonBackButton()
                ),
          
                //child 2
                const CustomText(
                  "Forgot Password",
                  fontSize: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
          
                const SizedBox(height: 41,),
          
                //child 3
                const AppLogo(),
        
                const SizedBox(height: 100,),

                //child 4
                const CustomText(
                  "Please, enter your email address. You will receive a link to create a new password via email.",
                  fontSize: 14,
                ),
          
                const SizedBox(height: 16,),
                
                //child 5
                const CustomTextfield(
                  hintText: "Enter your email here",
                  labelText: "Email",
                ),
        
        
                const SizedBox(height: 24,),
        
                //child 6
                CustomButton(
                  text: "Send",
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



