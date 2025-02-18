import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/screens/main/product_details/counter_section.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class CartTile extends StatelessWidget {
  const CartTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: 
        [
          BoxShadow(
            color: AppColors.ashColor.withOpacity(.3),
            offset: const Offset(0, 2),
            blurRadius: 10,
          ),
        ]
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [

              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  AppAssets.dummyImg,
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(width: 16,),

              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomText(
                    "Grapes",
                    fontSize: 14,
                  ),
                  CounterSection()
                ],
              ),

              

            ],
          ),

          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                ),
                CustomText(
                  "150.00",
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ],
          ),                    
        ],
      ),
    );
  }
}