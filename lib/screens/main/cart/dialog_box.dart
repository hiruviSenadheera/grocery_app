import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [

        Container(
          width: 300,
          height: 333,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SvgPicture.asset(
                AppAssets.dialogImg,
              ),

              const SizedBox(height: 20,),

              const CustomText(
                "Thanks for Buying\nFrom Us!",
                fontSize: 20,
                color: AppColors.primaryColor,
                textAlign: TextAlign.center,
              )
            ],
          ),
          
        ),

        Positioned(
          bottom: -20,
          child: CustomButton(
            text: "See your order", 
            onTap: (){}
          ),
        )
      ],
    );
  }
}