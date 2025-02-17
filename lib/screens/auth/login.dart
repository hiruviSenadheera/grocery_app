import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                ),
          
                //child 2
                const CustomText(
                  "Login",
                  fontSize: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
          
                const SizedBox(height: 41,),
          
                //child 3
                const AppLogo(),
        
                const SizedBox(height: 30,),
          
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
                  child: CustomText(
                    "Forgot your password?",
                    fontWeight: FontWeight.w500,
                    ),
                  ),
        
                const SizedBox(height: 24,),
        
                //child 7
                CustomButton(
                  text: "Login",
                  onTap: (){},
                ),

                const SizedBox(height: 23,),
      
                //child 8
                const CustomText(
                  "Or login with social account",
                  fontSize: 14,
                ),

                const SizedBox(height: 12,),

                //child 9
              ],
            ),
          ),
        ),
      ),
    );
  }
}


