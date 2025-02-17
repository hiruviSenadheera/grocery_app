import 'package:flutter/material.dart';
import 'package:grocery_app/components/bottom_navtile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  //TO STORE THE ACTIVE BOTTOM BAR INDEX
  final int _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 83,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavTile(
              icon: Icons.home,
              isActive: _activeIndex==0,
              onTap: () {
                
              },
            ),
            BottomNavTile(
              icon: Icons.favorite_border,
              isActive: _activeIndex==1,
              onTap: () {
                
              },
            ),
            BottomNavTile(
              icon: Icons.search,
              isActive: _activeIndex==2,
              onTap: () {
                
              },
            ),
            BottomNavTile(
              icon: Icons.person,
              isActive: _activeIndex==3,
              onTap: () {
                
              },
            ),
          ],
        )
      ),
    );
  }
}

