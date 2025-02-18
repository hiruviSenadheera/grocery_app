import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class CounterSection extends StatelessWidget {
  const CounterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.ashColor,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Row(
        children: [
          InkWell(child: Icon(Icons.add)),
          SizedBox(width: 15,),
          CustomText(
            "1",
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(width: 15,),
          InkWell(child: Icon(Icons.remove)),
        ],
      ),
    );
  }
}
