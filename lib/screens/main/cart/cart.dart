import 'package:flutter/material.dart';
import 'package:grocery_app/components/common_back_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonBackButton(),

                  CustomText(
                    "Cart",
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  ),

                  Icon(Icons.abc,color: Colors.white,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}