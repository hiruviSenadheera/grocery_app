import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),

        
        child: Column(
          children: [

            //child 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  AppAssets.menuIcon
                ),
      
                SvgPicture.asset(
                  AppAssets.cartIcon
                ),
              ],
            ),

            const SizedBox(height: 25,),

            //child 2
            const CustomText(
              "Vegetables",
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.primaryColor,
            ),

            const SizedBox(height: 41,),

            //child 3
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  crossAxisSpacing: 19,
                  mainAxisSpacing: 44,
                ), 
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(               
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: NetworkImage(AppAssets.dummyImg),
                        fit: BoxFit.cover,
                      )
                    ),
                    
                  );
                },
              ),
            ),

          ],
        ),
      )
    );
  }
}