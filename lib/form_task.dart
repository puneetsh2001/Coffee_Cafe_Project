import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Formtask extends StatefulWidget{
   Formtask({super.key});

  @override
  State<Formtask> createState() => _FormtaskState();
}
class _FormtaskState extends State<Formtask>{
  int _value=1;
  bool ch1=false;
  bool ch2=false;
  bool ch3=false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm(){
    if (_formKey.currentState!.validate()){
      ScaffoldMessenger.of(_formKey.currentContext!).showSnackBar(
        SnackBar(content: Text('Form submitted successfully')),
      );
    }
  }
  @override
  Widget build(BuildContext context){
    return
        Scaffold(
          // backgroundColor: Colors.black,
          appBar:AppBar(
            // backgroundColor: Colors.blueGrey[400],
            title: Text("Registration Form"),
            centerTitle: true,
          ),
          body: Center(
              child: Container(
              height: 800,
              width: 400,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 2),
                 // color: Colors.grey[500]
              ),
              child:ListView(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      // mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Student Registration",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child:TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter Name',
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 2)
                                        )
                                    ),
                                    validator:(value){
                                      if(value!.isEmpty){
                                        return 'Please Enter a Name';
                                      }
                                      return null;
                                    }
                                ), ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter Last Name',
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 2)
                                        )
                                    ),
                                    validator:(value){
                                      if(value!.isEmpty){
                                        return 'Please Enter a Last Name';
                                      }
                                      return null;
                                    }
                                ),
                              ),
                            ],
                          ),
                        ),//name and last name field
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'abc@gmail.com',
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 2)
                                        )
                                    ),
                                    validator:(value){
                                      if(value!.isEmpty){
                                        return 'Please Enter a Email';
                                      }
                                      return null;
                                    }
                                ),
                              ),
                              SizedBox(width: 20,),
                              Expanded(
                                child: TextFormField(
                                    decoration: InputDecoration(
                                        hintText: 'Enter Mobile no.',
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 2)
                                        )
                                    ),
                                    validator:(value){
                                      if(value!.isEmpty){
                                        return 'Please Enter Mobile No.';
                                      }
                                      return null;
                                    }
                                ),
                              ),
                            ],
                          ),
                        ),//email and mob field
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            width: 165,
                            height: 50,
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                      decoration: InputDecoration(

                                          hintText: 'Enter City',
                                          border: OutlineInputBorder(
                                              borderSide: BorderSide(color: Colors.black,width: 2)
                                          )
                                      ),
                                      validator:(value){
                                        if(value!.isEmpty){
                                          return 'Please Enter a Name';
                                        }
                                        return null;
                                      }
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),//city field
                        Divider(),
                        // Container(
                        //   height: 1, // Height of the divider
                        //   color: Colors.grey, // Color of the divider
                        //   width: double.infinity, // Full width
                        // ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Gender",style: TextStyle(fontSize: 20),),
                            Row(
                              children: [
                                Radio(
                                   activeColor: Colors.black,
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value){
                                    setState(() {
                                      _value=value!;
                                    });
                                  },
                                ),
                                Text("Male",style: TextStyle(fontSize: 20),)
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                   activeColor: Colors.black,
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value){
                                    setState(() {
                                      _value= value!;
                                    });
                                  },
                                ),
                                Text("Female",style: TextStyle(fontSize: 20),),
                              ],
                            )],
                        ),//radio buttons
                        Divider(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hobbies",style: TextStyle(fontSize: 20),),
                            Row(
                              children: [
                                Checkbox(
                                     activeColor: Colors.black,
                                    value: ch1, onChanged: (value){
                                  setState(() {
                                    ch1=value!;
                                  });
                                }),
                                Text("Cricket",style: TextStyle(fontSize: 20),)
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                     activeColor: Colors.black,
                                    value: ch2, onChanged: (value){
                                  setState(() {
                                    ch2=value!;
                                  });
                                }),
                                Text("Football",style: TextStyle(fontSize: 20),)
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    activeColor: Colors.black,
                                    value: ch3, onChanged: (value){
                                  setState(() {
                                    ch3=value!;
                                  });
                                }),
                                Text("Football",style: TextStyle(fontSize: 20),)
                              ],
                            ),
                          ],
                        ),//checkboxes
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: TextFormField(
                                obscureText: true,
                                // obscuringCharacter: '*',
                                decoration: InputDecoration(
                                    hintText: 'Enter Password',
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.black)
                                    )
                                ),
                                validator:(value){
                                  if(value!.isEmpty){
                                    return 'Please Enter a Password';
                                  }
                                  return null;
                                }
                            ),
                          ),
                        ),//password field
                        Container(
                            height: 40,
                            width: double.infinity,
                            margin: EdgeInsets.only(top: 16),
                            child:ElevatedButton(onPressed: _submitForm,
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero
                                    ),
                                    backgroundColor: Colors.blue
                                ),
                                child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 20)))
                        ),//register button
                      ],
                    ),)
                ],
              )
            ),
          ),
        );
  }
}