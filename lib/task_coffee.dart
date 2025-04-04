import 'package:flutter/material.dart';
import 'package:untitled/bottom_Navigation_widget.dart';
import 'package:untitled/data_table.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/task_card.dart';

import 'First_page.dart';
import 'icon_card_image.dart';

class Taskcoffee extends StatefulWidget {
  const Taskcoffee({super.key});

  @override
  State<Taskcoffee> createState() => _TaskcoffeeState();
}

class _TaskcoffeeState extends State<Taskcoffee> {
  int selectBottomNavVal = 0;
  List pages = [Homepage(), Taskcard(), Datatable()];

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
                  icon: Icon(Icons.account_circle_outlined),
                  label: "Profile",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: "Setting",
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
