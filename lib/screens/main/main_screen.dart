import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 83,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.home,
                size: 33,
                color: AppColors.primaryColor,
              )
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.favorite_border,
                size: 33,
                color: AppColors.ashColor,
              )
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.search,
                size: 33,
                color: AppColors.ashColor,
              )
            ),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.person,
                size: 33,
                color: AppColors.ashColor,
              )
            )
          ],
        )
      ),
    );
  }
}