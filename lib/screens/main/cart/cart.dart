import 'package:flutter/material.dart';
import 'package:grocery_app/components/common_back_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/screens/main/cart/cart_tile.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [

              const Row(
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

              const SizedBox(height: 18,),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (context,index){
                    return const CartTile();
                  }, 
                  separatorBuilder: (context,index){
                    return const SizedBox(height: 20,);
                  }, 
                  itemCount: 10
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

