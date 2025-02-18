import 'package:flutter/material.dart';
import 'package:grocery_app/components/common_back_button.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';
import 'package:grocery_app/utils/helpers/size_config.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      alignment: Alignment.topLeft,
      width: SizeConfig.w(context),
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        image: DecorationImage(
          image: NetworkImage(AppAssets.dummyImg),
          fit: BoxFit.cover,
        )
      ),

      child: const SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20),
          child: CommonBackButton(
            color: Colors.white,
          ),
        )
      ),
    );
  }
}