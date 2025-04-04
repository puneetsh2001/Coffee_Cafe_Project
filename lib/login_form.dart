import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginform extends StatelessWidget{
  Widget build(BuildContext context){
    return
     Scaffold(
              appBar: AppBar(
                // leading: IconButton(onPressed: () {},
                //     icon: Icon(Icons.arrow_back)),
                title: Text("Login Form"),
                centerTitle: true,
              ),
          body: Center(
            child: Container(
              width: 300,
              height: 500,
              // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 5),
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: IconButton(onPressed: () {},
                        icon: Icon(Icons.arrow_back)),
                    title: Text("Back"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Welcome to GoTaxi",
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20),),
                      Container(
                        width: 250,
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text("Punit Sharma"),
                      ),
                      Container(
                        width: 250,
                        height: 30,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: Text("example@gmail.com"),
                      ),
                      Container(
                        width: 250,
                        height: 40,
                          // padding: EdgeInsets.only(bottom: 15),
                          margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey,),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        child: ListTile(
                          leading: Image.asset( 'assets/images/indianFlag.png',height: 30,width: 20,),
                          title: Text("+91 0201234567"),
                        )
                      ),
                      Container(
                        width: 250,
                        height: 40,
                        margin: EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)
                        ),
                        child: ListTile(
                          title: Text("Gender"),
                          trailing: Icon(Icons.keyboard_arrow_down_rounded),
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 40,
                        margin: EdgeInsets.only(top: 10),
                        child: Wrap(
                          children: [
                            Text("By creating an account, you agree with our terms of services & Privacy Policy",
                              style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 30,
                        margin: EdgeInsets.only(top: 15),
                        // decoration: BoxDecoration(
                        //   borderRadius: BorderRadius.circular(5)
                        // ),
                        child: ElevatedButton(onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orangeAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)
                              )
                            ),
                            child: Text("Sign up", style: TextStyle(color: Colors.black),)),
                      ),
                        Container(
                          width: 250,
                          height: 30,
                          margin: EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                  OutlinedButton.icon(onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.black),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)
                                      )
                                    ),
                                    icon: Image.asset('assets/images/google_logo.png',width: 10,height: 10,)
                                    ,label: Text("Google",
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                  ),
                                  OutlinedButton.icon(onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Colors.black),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5)
                                        )
                                    ),
                                    icon: Image.asset('assets/images/facebook_logo.png',width: 10,height: 10,)
                                    ,label: Text("facebook", style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),
                                  )
                            ],
                          ),
                        ),
                      Container(
                        width: 250,
                        height: 30,
                        margin: EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Don't have an account?"),
                            SizedBox(width: 5,),
                            Text("Sign up",style: TextStyle(color: Colors.orange),)
                          ],
                        ),
                      )
                    ],
                  )
                ],

              ),

            ),
          ),

            );
  }
}