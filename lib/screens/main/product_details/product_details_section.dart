import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/screens/main/product_details/counter_section.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/helpers/size_config.dart';

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.w(context),
      height: SizeConfig.h(context),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        )
      ),
      padding: const EdgeInsets.fromLTRB(29, 34, 29, 0),

      child: const Column(
        children: [

          //child 1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              CustomText(
                "Grapes",
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),

              CounterSection(),
            ],
          ),

          SizedBox(height: 21,),

          //child 2
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              "Rs. 15.00",
              fontSize: 14,
            ),
          ),

          SizedBox(height: 28,),

          //child 3
          CustomText(
            "Grapes  is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution.",
            textAlign: TextAlign.justify,
            fontSize: 13,
          ),

          SizedBox(height: 28,),

          //child 4
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              "Related items",
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),
          ),

        ],
      ),
    );
  }
}

