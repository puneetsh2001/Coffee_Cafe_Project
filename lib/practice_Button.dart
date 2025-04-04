import 'package:flutter/material.dart';

class PracticeButton extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(
            title: Text("Form using Buttons"),
            centerTitle: true,
          ),
          body: Center(
            child: Container(
              width: 900,
              height: 200,
               padding:EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: Column(
                children: [
                SizedBox(
                  height: 50,
                  width: 900,
                   //color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("pet the doggo at least twice!",
                                   style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                    ),
                      // SizedBox(height: 10,),
                      Text("Description"),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          OutlinedButton.icon(onPressed: () {
                          },
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)
                                  )
                              ),
                              icon: Icon(Icons.calendar_month, color: Colors.grey,),
                              label: Text("Due date",style: TextStyle(color: Colors.grey),)),
                          SizedBox(width: 10,),
                          OutlinedButton.icon(onPressed: () {
                          },
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.grey,),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                  )
                              ),
                              icon: Icon(Icons.outlined_flag, color: Colors.grey,),
                              label: Text("Priority",style: TextStyle(color: Colors.grey),)),
                          SizedBox(width: 10,),
                          OutlinedButton.icon(onPressed: () {
                          },
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: Icon(Icons.alarm, color: Colors.grey,),
                              label: Text("Reminders",style: TextStyle(color: Colors.grey),)),
                          SizedBox(width: 10,),
                          IconButton(onPressed: () {},
                              style: IconButton.styleFrom(
                                side: BorderSide(color: Colors.grey),
                                shape:RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))
                              ),
                              icon: Icon(Icons.more_horiz_outlined)),
                          // OutlinedButton.icon(onPressed: () {},
                          //   style: OutlinedButton.styleFrom(
                          //       shape: RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(5),
                          //       )
                          //   ),
                          //   icon: Icon(Icons.more_horiz_outlined),
                          //   label: Text("more"),
                          // )
                        ],
                      ),
                    ),
                    Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.tag,color: Colors.red,),
                          SizedBox(width: 10,),
                          Text("Personal", style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 10,),
                          IconButton(onPressed: () {},
                              icon: Icon(Icons.arrow_drop_down_outlined)),
                          // Icon(Icons.arrow_drop_down_outlined)
                        ],
                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: () {
                          },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                backgroundColor: Colors.grey
                              ),
                              child: Text("Cancel", style: TextStyle(color: Colors.black),)),
                          SizedBox(width: 10,),
                          ElevatedButton(onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                backgroundColor: Colors.red,
                                // textStyle: TextStyle(color: Colors.white)
                              ),
                              child: Text("Add Task", style: TextStyle(color: Colors.white),)),
                        ],
                      )
                    ],
                  )
                  ],
                )

              ],)
            ),
          ),
        );
  }
}