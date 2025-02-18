import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class RelatedItemTile extends StatelessWidget {
  const RelatedItemTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(  
        width: 100, 
        height: 100,   
        alignment: Alignment.bottomCenter,         
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: NetworkImage(AppAssets.dummyImg),
            fit: BoxFit.cover,
          )
        ),
    
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          height: 24,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.primaryColor.withOpacity(.8),
          ),
    
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                "Pumpking",
                fontSize: 11,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
    
              SizedBox(
                width: 30,
                child: CustomText(
                  "Rs. 120.00",
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          
        ),
        
      ),
    );
  }
}