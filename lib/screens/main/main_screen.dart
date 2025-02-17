import 'package:flutter/material.dart';
import 'package:grocery_app/components/bottom_navtile.dart';
import 'package:grocery_app/screens/main/home/home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  //TO STORE THE ACTIVE BOTTOM BAR INDEX
  int _activeIndex = 0;

  void onItemTapped(int i){
      setState(() {
           _activeIndex = i;       
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home(),
      bottomNavigationBar: SizedBox(
        height: 83,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavTile(
              icon: Icons.home,
              isActive: _activeIndex==0,
              onTap: () => onItemTapped(0),
            ),
            BottomNavTile(
              icon: Icons.favorite_border,
              isActive: _activeIndex==1,
              onTap: () => onItemTapped(1),
            ),
            BottomNavTile(
              icon: Icons.search,
              isActive: _activeIndex==2,
              onTap: () => onItemTapped(2),
            ),
            BottomNavTile(
              icon: Icons.person,
              isActive: _activeIndex==3,
              onTap: () => onItemTapped(3),
            ),
          ],
        )
      ),
    );
  }
}

