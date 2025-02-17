import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(               
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: NetworkImage(AppAssets.dummyImg),
          fit: BoxFit.cover,
        )
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [

          Container(
            padding: EdgeInsets.all(7),
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: const Icon(
              Icons.favorite_border,
              color: AppColors.ashColor,
            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            height: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.primaryColor.withOpacity(.8),
            ),

            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  "Pumpking",
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),

                CustomText(
                  "Rs. 120.00",
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            
          ),
        ],
      ),
      
    );
  }
}