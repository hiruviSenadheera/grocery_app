import 'package:flutter/material.dart';
import 'package:grocery_app/screens/main/product_details/upper_section.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
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
                Positioned(
                  top: 260,
                  child: Container(
                    width: SizeConfig.w(context),
                    height: SizeConfig.h(context),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(34),
                        topRight: Radius.circular(34),
                      )
                    ),
                  ),
                ),
                
              ],
            ),
          ),
      );
  }
}

