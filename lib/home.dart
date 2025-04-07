import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPage=0;
  Widget build(BuildContext context){
    return
        Scaffold(
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 40),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/Profile_pic.jpg'),
                      ),
                      trailing:Stack(
                        children: [
                          Icon(Icons.notifications,size: 30,),
                          Positioned(
                              right: 0,
                              top: 0,
                              child: Text("2",style: TextStyle(fontWeight: FontWeight.w700),))
                        ],
                      )

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hey Puneet",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                        Text("Shop fresh sweet fruits with discount",style: TextStyle(fontSize: 15),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)
                          ),
                          prefixIcon: Icon(Icons.search,size: 30,),
                          hintText: "Search groceries item",
                          suffixIcon: Icon(Icons.mic,size: 25,)
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: PageView(
                      // pageSnapping: false,
                      physics: BouncingScrollPhysics(),
                      onPageChanged: (index){
                        setState(() {
                          currentPage=index;
                        });
                      },
                      children: [
                        Stack(
                          children: [
                            Image.asset('assets/images/fruit_1.jpg',
                              fit: BoxFit.cover,width: double.infinity,),
                            Positioned(
                                left: 200,
                                bottom: 10,
                                child: row()),
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset('assets/images/fruit_2.jpg',
                            fit: BoxFit.cover,width: double.infinity,),
                            Positioned(
                                left: 200,
                                bottom: 10,
                                child: row()),
                          ],
                        ),
                        Stack(
                          children: [
                            Image.asset('assets/images/fruit_3.jpg',fit: BoxFit.cover,width: double.infinity,),
                            Positioned(
                                bottom: 10,
                                left: 200,
                                child: row()),
                          ],
                        )


                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Categories",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                        TextButton(onPressed: (){},
                            child: Text("see all",style: TextStyle(fontSize: 15,color: Colors.black),))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_1.jpg',),
                                Positioned(
                                    bottom: 5,
                                    left: 18,
                                    child: Text("Berry",style: TextStyle(fontSize: 15),))
                              ],
                            )

                        ),

                        SizedBox(
                            width: 100,
                            height: 100,
                            child:Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_2.jpg',),
                                Positioned(
                                    bottom: 5,
                                    left: 20,
                                    child: Text("Cerries"))
                              ],
                            )
                        ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child:Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_3.jpg',),
                                Positioned(
                                    left:10,
                                    bottom: 5,
                                    child: Text("Banana"))
                              ],
                            )
                        ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child:Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_4.jpg',),
                                Positioned(
                                    bottom:5,
                                    left: 0,
                                    child: Text("Dragonfruit"))
                              ],
                            ) ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child:Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_5.jpg',),
                                Positioned(
                                    left: 10,
                                    bottom: 5,
                                    child: Text("Papaya"))
                              ],
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Popular",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                        TextButton(onPressed: (){},
                            child: Text("see all",style: TextStyle(fontSize: 15,color: Colors.black),))
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                            width: 100,
                            height: 100,
                            child: Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_1.jpg',),
                                Positioned(
                                    bottom: 5,
                                    left: 18,
                                    child: Text("Berry",style: TextStyle(fontSize: 15),))
                              ],
                            )

                        ),

                        SizedBox(
                            width: 100,
                            height: 100,
                            child:Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_2.jpg',),
                                Positioned(
                                    bottom: 5,
                                    left: 20,
                                    child: Text("Cerries"))
                              ],
                            )
                        ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child:Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_3.jpg',),
                                Positioned(
                                    left:10,
                                    bottom: 5,
                                    child: Text("Banana"))
                              ],
                            )
                        ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child:Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_4.jpg',),
                                Positioned(
                                    bottom:5,
                                    left: 0,
                                    child: Text("Dragonfruit"))
                              ],
                            ) ),
                        SizedBox(
                            width: 100,
                            height: 100,
                            child:Stack(
                              children: [
                                Image.asset('assets/images/LV_fruit_5.jpg',),
                                Positioned(
                                    left: 10,
                                    bottom: 5,
                                    child: Text("Papaya"))
                              ],
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ],
          )

        );
  }

  Widget row(){
    return
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          currentPage==0?Icon(Icons.circle,size: 10,color: Colors.white,):Icon(Icons.circle,size: 10,color: Colors.black,),
          currentPage==1?Icon(Icons.circle,size: 10,color: Colors.white,):Icon(Icons.circle,size: 10,color: Colors.black,),
          currentPage==2?Icon(Icons.circle,size: 10,color: Colors.white,):Icon(Icons.circle,size: 10,color: Colors.black,),
        ],
      );
  }
}