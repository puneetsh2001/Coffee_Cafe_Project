import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Card extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        height:1000,
        width: 1000,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [Image.asset('assets/images/Profile_pic.jpg'),
                Column(
                  children: [Text('Name: Punit',style: TextStyle(fontSize: 25),),
                             Text('Surname: Sharma',style: TextStyle(fontSize: 25),)],
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}