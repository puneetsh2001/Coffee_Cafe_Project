import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Taskcard extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text("Instagram Post"),
            centerTitle: true,
            backgroundColor: Colors.blueAccent,
          ),
          body: Center(
            child: Container(height: 600,
              width: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.black)
              ),
              child: Column(
                children: [
                  Container(
                    color: Colors.grey,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('assets/images/Profile_pic.jpg',),
                        ),
                        SizedBox(width:10 ,),
                        Text("_puneet_sh", style: TextStyle(fontSize: 20),),
                         Spacer(flex: 1,),Text("14h",style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  Image.asset('assets/images/nature2.jpg',),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    color: Colors.grey,
                    child: Row(
                      children: [
                        Icon(Icons.mode_comment_outlined,),
                        SizedBox(width:10 ,),
                        Text("3 comments",style: TextStyle(fontSize: 20),),
                        Spacer(flex: 1,),
                        Icon(Icons.favorite_border),
                        SizedBox(width:10 ,),
                        Text("17 likes"),
                      ],
                    ),
              ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    child: Row(
                      children: [
                        Icon(Icons.favorite_outline,color: Colors.grey,),
                        SizedBox(width:10 ,),
                        Text("Add comments",style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  )
            ],
            ),
         ),
         ),
        );
  }
}