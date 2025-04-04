import 'package:flutter/material.dart';

class TaskSession extends StatelessWidget {
  const TaskSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Session"),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 300,

          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            color: Colors.grey.shade300,
          ),
          child: Column(
            children: [
              Container(
                color: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'images/employee_tracking_card.png',
                          height: 50,
                          width: 50,
                        ),
                        Text("Elliot")
                      ],
                    ),
                    Text("14h")
                  ],
                ),
              ),

              Image.asset(
                'images/employee_tracking_card.png',
              ),
              Container(
                height: 100,
                color: Colors.white,
                child: Column(
                    children: [
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                        Icon(Icons.message),
                      Text("3 Comments")
                    ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.favorite_border),
                          Text("17  likes")
                        ],
                      )
                      ]
                  ),
                ),
          Divider(),
Row(
  children: [
    Icon(Icons.favorite_border),

    Container(
      padding: EdgeInsets.only(left: 8),
      child: Text("Add Comments..",)
)
                    ],
                )


            ],
          ),
        ),
          ]
      ),
      )
    )
    );
  }
}
