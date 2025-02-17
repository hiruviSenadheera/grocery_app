import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';

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
      
    );
  }
}