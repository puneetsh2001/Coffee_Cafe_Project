import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/login_screen.dart';

class Signupscreen extends StatefulWidget{
  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final GlobalKey<FormState> form=GlobalKey<FormState>();
  void signUp(){
    if(form.currentState!.validate()){
      ScaffoldMessenger.of(form.currentContext!).showSnackBar
        (SnackBar(content: Text('Sign up successful',)));
    }
  }

  Widget build(BuildContext context){
    return
        Scaffold(
          body: ListView(
            children:
            [
              Form(
                  key: form,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 50),
                          child: Text("Welcome to Grofast!",
                            style: TextStyle(fontSize: 30,fontWeight:FontWeight.w700 ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              ),
                              prefixIcon: Icon(Icons.person,color: Colors.grey,),
                              hintText: 'Full name',
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
                          padding: const EdgeInsets.all(12),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              ),
                              prefixIcon: Icon(Icons.mail,color: Colors.grey,),
                              hintText: 'Email address',
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Enter email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              ),
                              prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                              suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,),
                              hintText: 'Password',
                            ),
                            validator: (value){
                              if(value!.isEmpty){
                                return 'Enter password';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton.icon(onPressed: signUp,
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orange,
                                    shape: RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.orange)
                                    )
                                ),
                                label: Text("Sign up",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 15),)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account ?",style: TextStyle(color: Colors.grey),),
                            TextButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){return Loginscreen();}));
                            },
                                child: Text("Sign in",style: TextStyle(color: Colors.orange),))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0,right: 12,top: 100),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton.icon(onPressed: (){},
                                icon: Icon(Icons.g_mobiledata,size: 30,color: Colors.blue,),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.grey[200],
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.grey),

                                    )
                                ),
                                label: Text("Continue with google",style: TextStyle(color: Colors.black),)),
                          ),
                        )
                      ],
                    ),
                  )),
            ]

          ),
        );
  }
}