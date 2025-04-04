import 'package:flutter/material.dart';

class Practice extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(
            title: Text('Profile'),
          ),
          body: Container(
             width: 1000,
             height: 500,
            color: Colors.grey,
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 300),
            child: Container(
              child: Row(children: [
                Image.asset('assets/images/Profile_pic.jpg',width: 100, height: 100,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Name: Punit',style: TextStyle(fontSize:25),),
                    Text('Surname: Sharma',style: TextStyle(fontSize:25)),],
                )
              ],),

            ),

          ),
        );
  }
}