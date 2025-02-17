import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CustomText(
        "Favourites",
        fontSize: 30,
      ),
    );
  }
}