import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          //child 1
          Image.asset("assets/icons/logo.png"),

          Text("Shop Your Daily Necessary")
        ],
      ),
    );
  }
}