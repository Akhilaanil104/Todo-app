import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/utils/const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    bool _obscureText=true;
    return Scaffold(
      backgroundColor: ColorApp.bgcolor,
      appBar: AppBar(
        backgroundColor: ColorApp.bgcolor,
        title: const Text(
          "English(India)v",
          style: TextStyle(color: ColorApp.mainText),
        ),
        centerTitle: true,
      ),
      body: 
      Stack(
        children: [
         Row(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Image(
              width: 250,
              // height: 40,
              image:
             AssetImage("assets/images/logo2.png"))
            // Image(
              // height: 200,
              // image: AssetImage(
                // "assets/images/birdlogo.png"),
                // ),
                ],
         ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text(
                  "Akhila's App",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color:ColorApp.mainText,
                      fontWeight: FontWeight.bold,
                      // fontFamily: 'Dancing_Script',
                      fontFamily: "PlaywriteAR",
                      fontSize: 28),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      padding: ConstItem.textformPad,
                      margin: ConstItem.textFormMargin,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 99, 137, 152),
                          borderRadius: BorderRadius.circular(30)
                          // border: RoundedRectangleBorder(borderRadius: BorderRadius.all(30))
                          ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 176, 179, 183)),
                          label: Text(
                            "Username",
                            style: TextStyle(fontSize: 24),
                          ),
                          //  helperText: "Enter your username",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                    ),
                    Container(
                      padding: ConstItem.textformPad,
                      margin: ConstItem.textFormMargin,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 99, 137, 152),
                          borderRadius: BorderRadius.circular(30)
                          // border: RoundedRectangleBorder(borderRadius: BorderRadius.all(30))
                          ),
                      child: TextFormField(
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                           suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            icon: Icon(color: Colors.white,
                              _obscureText
                                ? Icons.visibility_off
                                // ignore: dead_code
                                : Icons.visibility),
                          ),
                          border: InputBorder.none,
                          labelStyle:
                              TextStyle(color: Color.fromARGB(255, 176, 179, 183)),
                          label: Text(
                            "Password",
                            style: TextStyle(fontSize: 24),
                          ),
                          //  helperText: "Enter your username",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                        ),
                      ),
                    ),
          SizedBox(height: 20,),
                    Material(
                      elevation: 20,
                      color: Colors.green,
                      shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))) ,
                      child: Container(
                        
                        width: 350,
                        child: ElevatedButton(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 232, 235, 229),),
                        ),
                          child: Text("Log in",style: TextStyle(
                            fontFamily: "Teko",fontSize: 35,fontWeight: FontWeight.w900 ),),
                        onPressed: (){},),
                      ),
          
                    ),
                   
          
                  ],
                ),
              ),
               SizedBox(
                height: 5,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Forgotten Password",
                  style: TextStyle(color: ColorApp.mainText),
                ),
              ),
          
           
            
            ],
            
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: 
              Container(
                height: 60,
                width: 350,
            
                child: TextButton(onPressed: (){},
                child:ElevatedButton(style: ButtonStyle(
                  side:WidgetStateProperty.all(BorderSide(color:ColorApp.mainText )) ,
                  backgroundColor: WidgetStateProperty.all(ColorApp.bgcolor)
                
                ),
                  onPressed: (){},
                child: Center(
                  child: Text("Create new account",
                  style: TextStyle(fontFamily:"Teko",
                            color:ColorApp.mainText, ),),
                ),),),
                  
             ),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child:Image(height:30,
          //     image: AssetImage("assets/github.png")),
          // )
        ],
      ),
      
    );
  }
}
