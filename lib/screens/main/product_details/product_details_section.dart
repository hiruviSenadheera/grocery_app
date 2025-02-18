import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
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

              
            ],
          ),


        ],
      ),
    );
  }
}
