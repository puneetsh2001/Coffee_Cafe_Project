import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 40),
            child: Column(
              children: [
                ListTile(
                  title: Text("Category"),
                  trailing:Stack(
                    children: [
                      Icon(Icons.notifications),
                      Positioned(
                          right: 0,
                          top: 0,
                          child: Text("1",style: TextStyle(fontWeight: FontWeight.w700)))
                    ],
                  )
                ),
                Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.grey)
                          ),
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search food'
                        ),
                      ),
                    ),
                     SizedBox(width: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){},
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.grey[200],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Colors.grey),

                          )
                        ),
                          icon: Icon(Icons.filter_center_focus),iconSize: 40,),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("All Categories",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
                      Text("see all",style: TextStyle(fontSize: 15),)
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    children: [
                      Stack(
                        children: [
                          Container(
                            // Navigator.push(context, MaterialPageRoute(builder: (context){return Iconcardimage();})),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.brown, width: 2),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/LV_fruit_5.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              left: 70,
                              bottom: 10,
                              child: Text("Papaya",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.brown, width: 2),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/LV_fruit_1.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              left: 55,
                              bottom: 10,
                              child: Text("Strawberry",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            // color: Colors.yellow,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.brown, width: 2),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/LV_fruit_2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              left: 70,
                              bottom: 10,
                              child: Text("Cerries",
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            // color: Colors.pink,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.brown, width: 2),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/LV_fruit_3.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              left: 70,
                              bottom: 10,
                              child: Text("Banana",
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            // color: Colors.deepOrangeAccent,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.brown, width: 2),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/LV_fruit_4.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              left: 50,
                              bottom: 10,
                              child: Text("Dragon fruit",
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)))
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            // color: Colors.deepOrangeAccent,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.brown, width: 2),
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage('assets/images/LV_fruit_5.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                              left: 70,
                              bottom: 10,
                              child: Text("Papaya",
                                  style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20)))
                        ],
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
  }
}