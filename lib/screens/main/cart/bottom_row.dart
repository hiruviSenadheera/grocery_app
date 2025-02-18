import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_button.dart';
import 'package:grocery_app/components/custom_text.dart';

class BottomRow extends StatelessWidget {
  const BottomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      height: 300,
      color : Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CartAmountRow(
            name: "Item total",
            amount: "Rs. 670.00",
          ),
          const SizedBox(height: 12,),
          const CartAmountRow(
            name: "Discount",
            amount: "- Rs. 150.00",
          ),
          const SizedBox(height: 12,),
          const CartAmountRow(
            name: "Tax",
            amount: "Rs. 50.00",
          ),
          const SizedBox(height: 12,),
          const CartAmountRow(
            name: "Total",
            amount: "Rs. 450.00",
            isTotal: true,
          ),
          const SizedBox(height: 20,),
          CustomButton(
            text: "Place Order", 
            onTap: (){},
          )
        ],
      ),
    );
  }
}

class CartAmountRow extends StatelessWidget {
  const CartAmountRow({
    super.key,
    required this.name,
    required this.amount,
    this.isTotal = false,

  });

  final String name;
  final String amount;
  final bool isTotal;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          name,
          fontSize: isTotal? 16:14,
          fontWeight: isTotal? FontWeight.bold:FontWeight.normal,
        ),
        CustomText(
          amount,
          fontSize: isTotal? 16:14,
          fontWeight: isTotal? FontWeight.bold:FontWeight.normal,
        ),
      ],
    );
  }
}

