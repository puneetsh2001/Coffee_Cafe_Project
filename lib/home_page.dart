import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cold_Coffee_1.dart';
import 'package:untitled/icon_card_image.dart';

class Homepage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        title: Text("Coffee cafe"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
             padding: EdgeInsets.zero,
            children: [DrawerHeader(
                decoration:BoxDecoration(
            color: Colors.blue
        ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/Profile_pic.jpg'),
                ),
                SizedBox(width: 20,),
                Text("Puneet Sharma")],
            )),ListTile(
              title: Text("Home"),
            ),
              ListTile(
                title: Text("Business"),
              ),
              ListTile(
                title: Text("School"),
              ),
            ],),
      ),
      body: Container(
        width: 500,
        height: 800,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(child: Text("Menu")),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              width: 430,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.deepOrangeAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.brown),
                  ),
                  // border: OutlineInputBorder(
                  //  borderRadius: BorderRadius.circular(20),
                  //   borderSide: BorderSide(color: Colors.brown,)
                  // )
                ),
              ),
            ),
            SizedBox(child: Text("Categories")),
            Container(
              width: 430,
              height: 40,
              padding: EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                      ),
                      icon: Icon(Icons.coffee, color: Colors.white),
                      label: Text(
                        "Cold Coffee",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.coffee),
                      label: Text("Hot Coffee"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.coffee),
                      label: Text("Shake"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.icecream),
                      label: Text("Ice Cream"),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 630,
              margin: EdgeInsets.only(top: 10),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ColdCoffee1();
                          },
                        ),
                      );
                    },
                    child: Container(
                      // Navigator.push(context, MaterialPageRoute(builder: (context){return Iconcardimage();})),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.brown, width: 2),
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage('assets/images/cold_coffee_4.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/cold_coffee_1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.yellow,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/cold_drink_2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.pink,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/cold_coffee_3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.deepOrangeAccent,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/cold_coffee_4.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    // color: Colors.deepOrangeAccent,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 2),
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage('assets/images/coffee_6.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
