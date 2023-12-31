import 'dart:async';

import 'package:flutter/material.dart';
import 'package:insta_clone/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
     });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('images/insta_logo.png',height: 200,),
          ),
          SizedBox(height: 70,),
          Text('Welcome To Instagram',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)
        ],
      ),
    );
  }
}
