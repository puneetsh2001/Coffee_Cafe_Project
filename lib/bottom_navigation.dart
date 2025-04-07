import 'package:flutter/material.dart';
import 'package:untitled/bottom_Navigation_widget.dart';
import 'package:untitled/categories.dart';
import 'package:untitled/data_table.dart';
import 'package:untitled/home.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/task_card.dart';

import 'First_page.dart';
import 'icon_card_image.dart';

class Bottomnavigation extends StatefulWidget {
  const Bottomnavigation({super.key});

  @override
  State<Bottomnavigation> createState() => _BottomnavigationState();
}

class _BottomnavigationState extends State<Bottomnavigation> {
  int selectBottomNavVal = 0;
  List pages = [Home(), Categories(), Datatable()];

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
            backgroundColor: Colors.grey,
            // appBar: AppBar(
            //   backgroundColor: Colors.grey,
            //   title: Text("Coffee cafe"),
            //   centerTitle: true,
            // ),
            body: Center(
               child: pages.elementAt(selectBottomNavVal),

            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: "Categories",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: "Profile",
                ),
              ],
              currentIndex: selectBottomNavVal,
              onTap: (value) {
                print("Select index ${value}");
                setState(() {
                  selectBottomNavVal = value;
                });
              },
            ),
          );
  }
}
