import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/task_coffee.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Taskcoffee(),)
      );
    });
  }
  @override
  Widget build(BuildContext context) {
  return
      Scaffold(
        body: Container(
          color: Colors.blue,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage('assets/images/google_logo.png',))),
                  Text("Coffee Cafe-Day",
                    style: TextStyle(
                      fontSize: 20,color: Colors.white,fontWeight: FontWeight.w900),),
                ],
              )),
        ),
      );
  }
}