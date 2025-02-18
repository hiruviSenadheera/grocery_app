import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/screens/main/product_details/product_details_section.dart';
import 'package:grocery_app/screens/main/product_details/upper_section.dart';
import 'package:grocery_app/utils/helpers/size_config.dart';


class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
          SizedBox(
            width: SizeConfig.w(context),
            height: SizeConfig.h(context),

            child: Stack(
              children: [
                const UpperSection(),
                const Positioned(
                  top: 260,
                  child: ProductDetailsSection(),
                ),

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 70),
                    child: CustomButton(
                      text: "Add to cart", 
                      onTap: (){}
                    ),
                  ),
                ),
                
              ],
            ),
          ),
      );
  }
}


