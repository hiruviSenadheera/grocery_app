
import 'package:flutter/material.dart';

class Helpers{
  static void navigateTo(BuildContext context, Widget widget){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> widget));
  }
}