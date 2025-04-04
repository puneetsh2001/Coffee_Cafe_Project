import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Iconcardimage extends StatelessWidget{
  const Iconcardimage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon, Card, Images"),
      ),
      body:Container(
        width: 1000,
        height: 1000,
        color: Colors.blue,
        child:Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name: Punit Sharma',style: TextStyle(fontSize: 25),),
            Image.asset('assets/images/Profile_pic.jpg', width: 200, height: 200,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.favorite, color: Colors.red,size: 50,),
              Icon(Icons.audiotrack,color: Colors.black,size: 50,),
              Icon(Icons.beach_access,color: Colors.amber,size: 50,),
            ],)
          ],
        ),
      ),
    );
  }
}