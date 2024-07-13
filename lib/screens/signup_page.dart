import 'package:flutter/material.dart';



class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return
    SafeArea(child:  Scaffold(
      
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text("SIGNUP HERE",style:  TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 40),),
            ),
             TextFormField(decoration: InputDecoration(hintText: "Enter name",),),
            TextFormField(decoration: InputDecoration(hintText: "Enter email address"),),
             TextFormField(decoration: InputDecoration(hintText: "phonenumber"),),
              TextFormField(decoration: InputDecoration(hintText: "Location"),),
            
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextButton(onPressed: (){}, child: Text("Signup")),
            )

            
            
                
                
          ],
        ),
      ),


    ),);
  }
}