import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(
            title: Text("Button"),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      elevation: 12.0,
                      backgroundColor: Colors.pink,
                      textStyle: const TextStyle(color: Colors.white)),
                  child: const Text('Elevated Button',style: TextStyle(color: Colors.black),),
                  ),
                OutlinedButton(
                    child: Text("outline button",),
                    onPressed: () {}
        ),
                TextButton(onPressed: () {
                  print("text button");
                }, child: Text("Text")),
                IconButton(
                  splashColor: Colors.blue,
                  icon: Icon(Icons.code),
                  color: Colors.blue,
                  onPressed: () {},
                ),
              ],
            )
          ),
        );
  }
}