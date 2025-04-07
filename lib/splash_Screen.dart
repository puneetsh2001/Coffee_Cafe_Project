import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/scroll_screen.dart';
import 'package:untitled/bottom_navigation.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();//study about ready state
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Scrollscreen(),)
      );
    });
  }
  @override
  Widget build(BuildContext context) {
  return
      Scaffold(
        body: Container(
          color: Colors.white,
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_shopping_cart,color: Colors.deepOrange,size:50,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("G R O F A S T",
                      style: TextStyle(
                        fontSize: 30,color: Colors.green,fontWeight: FontWeight.w900),),
                  ),
                ],
              )),
        ),
      );
  }
}