import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
=======
    return
    SafeArea(child:  Scaffold(
      
      body: Container(
>>>>>>> bd84952cf43fd23ca135ba526a4bf625e4787cb5
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
<<<<<<< HEAD
            Text(
              "SIGNUP HERE",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 40),
            )
          ],
        ),
      ),
    );
=======
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
>>>>>>> bd84952cf43fd23ca135ba526a4bf625e4787cb5
  }
}
