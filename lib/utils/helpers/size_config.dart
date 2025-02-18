import 'package:flutter/material.dart';

class SizeConfig{
  //get screen width
  static double w(BuildContext context) => MediaQuery.of(context).size.width;
      
  //get screen height
  static double h(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}