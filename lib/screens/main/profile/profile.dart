import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [

                //child 1
                const CustomText(
                  "Profile",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),

                const SizedBox(height: 122,),

                //child 2
                ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                  child: Image.network(
                    AppAssets.profileUrl,
                    width: 200,
                    height: 200,
                  ),
                ),

                const SizedBox(height: 18,),

                //child 3
                const CustomText(
                  "Terry Robinson",
                  fontSize: 18,
                ),

                //child 4
                const CustomText(
                  "terryrobinson@gmail.com",
                  fontSize: 13,
                  color: AppColors.ashColor,
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: CustomButton(text: "Logout", onTap: (){}),
            )
          ],
        ),
      ),
    );
  }
}