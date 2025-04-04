import 'package:flutter/material.dart';
import 'package:untitled/First_page.dart';
import 'package:untitled/icon_card_image.dart';
class BottomNavigationWidget extends StatefulWidget {
  const BottomNavigationWidget({super.key});

  @override
  State<BottomNavigationWidget> createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {


  int selectBottomNavVal = 0;
   List pages = [
     Firstpage(),
     Text("Profile Page"),
     Iconcardimage()


   ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: Center(
        child: pages.elementAt(selectBottomNavVal),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
      ],

        currentIndex: selectBottomNavVal,
        onTap: (value){
           print("Select index ${value}");
            setState(() {
              selectBottomNavVal = value;

            });
        },
      ),
    );
  }
}
