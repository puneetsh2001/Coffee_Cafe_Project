import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/home_page.dart';
import 'package:untitled/sign_up_screen.dart';
import 'package:untitled/bottom_navigation.dart';

class Loginscreen extends StatefulWidget{
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {

 final GlobalKey<FormState> _form= GlobalKey<FormState>();

 void submit(){
   if(_form.currentState!.validate()){
     ScaffoldMessenger.of(_form.currentContext!).showSnackBar
       (SnackBar(content: Text("Login successful"))
     );
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Bottomnavigation();}));
   }
 }
  Widget build(BuildContext context){
    return
        Scaffold(
          body: ListView(
            children:[Form(
              key: _form,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 50),
                      child: Text("Welcome back\nto Grofast!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w900,),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          // labelText: 'Full Name',
                          prefixIcon: Icon(Icons.person),
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                            // borderSide: BorderSide(color: Colors.black,width: 2),
                          ),
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter full name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            hintText: 'Email address',
                            border: OutlineInputBorder()
                        ),
                        validator: (value){
                          if(value!.isEmpty){
                            return 'Enter Email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("Forget password")
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: submit,
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                )
                            ),
                            child: Text("Sign in",style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                    Center(
                      child: TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Signupscreen();}));
                      },
                          child: Text("Create an account",
                            style: TextStyle(color: Colors.orange,fontSize: 20),)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 8,right: 8,bottom: 12),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton.icon(onPressed: (){},
                            icon: Icon(Icons.g_mobiledata,size: 30,color: Colors.blue,),
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.grey)
                                )
                            ),
                            label:Text("Continue with google",
                              style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w700),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton.icon(onPressed: (){},
                            icon: Icon(Icons.facebook,size: 25,color: Colors.blue,),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.grey)
                                )
                            ),
                            label: Text("Continue with facebbok",
                              style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w700),)),
                      ),
                    )
                  ],
                ),
              ),),]

          )
        );
  }
}