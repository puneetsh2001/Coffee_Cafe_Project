import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login_screen.dart';

class Scrollscreen extends StatefulWidget {
  @override
  State<Scrollscreen> createState() => _ScrollscreenState();
}

class _ScrollscreenState extends State<Scrollscreen> {
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        // pageSnapping: false,
        physics: BouncingScrollPhysics(),
        onPageChanged: (index){
          setState(() {
            currentPage=index;
          });
        },
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/fruit_1.jpg'),
              Text(
                "Fresh Groceries to your Doorsteps",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Text(
                "Fruits come in a wide variety of flavors and textures. Some are sweet and juicy, like ripe mangoes and watermelon, offering a refreshing burst of hydration",
                style: TextStyle(fontSize: 20,color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              row(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Loginscreen();}));
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                          )
                      ),
                      child: Text("Next",style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/fruit_2.jpg'),
              Text(
                "Fast Shipment to your home",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Text(
                "Fruits come in a wide variety of flavors and textures. Some are sweet and juicy, like ripe mangoes and watermelon, offering a refreshing burst of hydration",
                style: TextStyle(fontSize: 20,color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              row(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Loginscreen();}));
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                          )
                      ),
                      child: Text("Next",style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/fruit_3.jpg'),
              Text(
                "Shop your daily necessary!",
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              Text(
                "Fruits come in a wide variety of flavors and textures. Some are sweet and juicy, like ripe mangoes and watermelon, offering a refreshing burst of hydration",
                style: TextStyle(fontSize: 20,color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              row(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Loginscreen();}));
                  },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                        )
                      ),
                      child: Text("Start",style: TextStyle(color: Colors.white),)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
  Widget row(){
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          currentPage==0?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size: 10,),
          currentPage==1?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size: 10,),
          currentPage==2?Icon(Icons.circle,size: 10,color: Colors.black,):Icon(Icons.circle_outlined,size: 10,),
        ],
      );
  }
}
