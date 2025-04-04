import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColdCoffee1 extends StatelessWidget{
  Widget build(BuildContext context){
    return
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.grey,
            title: Text(
              "Cold Coffee",style: TextStyle(
                fontSize: 30,color: Colors.white, fontWeight: FontWeight.w900),
              ),centerTitle: true,
          ),
          body:
          Center(
            child: Container(
              width: 1000,
              height: 1200,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black87, Colors.orange],
                stops: [0.3,0.5],
                begin: Alignment.topCenter,
                end:Alignment.bottomCenter,
              ),
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // children: [
                    //   IconButton(onPressed: (){
                    //
                    //   },
                    //       icon: Icon(Icons.arrow_back,color: Colors.white,)),
                     children: [ Icon(Icons.favorite_outline,color: Colors.white,)]
                    //],
                  ),
                  Image.asset('assets/images/cold_coffee_1.jpg',width: 100,height: 250,),
                  Row(
                    children: [
                      Container(
                        width: 120,
                        height: 30,
                        margin: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black,width: 2),
                          color: Colors.orange
                        ),
                        child:
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [Icon(Icons.remove),
                                Text("1",style: TextStyle(fontWeight: FontWeight.w900),),
                                Icon(Icons.add)]
                            )
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Properties",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                    ],
                  ),
                  Container(
                    width: 400,
                    height: 200,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Wrap(
                      children: [
                        Text("Cold coffee is a refreshing and delicious drink, perfect for coffee lovers. Here is a simple and quick way to make it at home",
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Sale Price",style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),),
                              Text("100 rs",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900))
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  // borderRadius: BorderRadius.all(Radius.zero)
                                ),
                                  backgroundColor: Colors.black,
                                  textStyle: const TextStyle(color: Colors.white)),
                              child: const Text('Add to Cart',style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              )
                    ),
          )
        );
  }
}