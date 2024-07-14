import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:todo_app/screens/widgets/appname.dart';
import 'package:todo_app/screens/widgets/createbutton.dart';
import 'package:todo_app/utils/colors.dart';
import 'package:todo_app/utils/const.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool _obscureText = true;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorApp.bgcolor,
      appBar: AppBar(
        backgroundColor: ColorApp.bgcolor,
        title: const Text(
          "English(India)v",
          style: TextStyle(color: ColorApp.mainText),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                    width: 250,
                    // height: 40,
                    image: AssetImage("assets/images/logo2.png"))
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
                const AppName(),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: [
                      Scrollable(
                          axisDirection: AxisDirection.up,
                          // dragStartBehavior: ,
                          viewportBuilder: (context, viewport) {
                            return Container(
                              padding: ConstItem.textformPad,
                              margin: ConstItem.textFormMargin,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 99, 137, 152),
                                  borderRadius: BorderRadius.circular(30)
                                  // border: RoundedRectangleBorder(borderRadius: BorderRadius.all(30))
                                  ),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  labelStyle: TextStyle(
                                      color:
                                          Color.fromARGB(255, 176, 179, 183)),
                                  label: Text(
                                    "Username",
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  //  helperText: "Enter your username",
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.always,
                                ),
                              ),
                            );
                          }),
                      Container(
                        padding: ConstItem.textformPad,
                        margin: ConstItem.textFormMargin,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 99, 137, 152),
                            borderRadius: BorderRadius.circular(30)
                            // border: RoundedRectangleBorder(borderRadius: BorderRadius.all(30))
                            ),
                        child: TextFormField(
                          validator: (value) {
                            passwordValidator();
                          },
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                              icon: Icon(
                                  color: Colors.white,
                                  _obscureText
                                      ? Icons.visibility_off
                                      // ignore: dead_code
                                      : Icons.visibility),
                            ),
                            border: InputBorder.none,
                            labelStyle: TextStyle(
                                color: Color.fromARGB(255, 176, 179, 183)),
                            label: Text(
                              "Password",
                              style: TextStyle(fontSize: 24),
                            ),
                            //  helperText: "Enter your username",
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 20,
                        color: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Container(
                          width: 350,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                Color.fromARGB(255, 232, 235, 229),
                              ),
                            ),
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                  fontFamily: "Teko",
                                  fontSize: 35,
                                  fontWeight: FontWeight.w900),
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.pushReplacementNamed(
                                    context, '/home');
                              });
                            },
                          ),
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
            CreateAccountButton(),

            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child:Image(height:30,
            //     image: AssetImage("assets/github.png")),
            // )
          ],
        ),
      ),
    );
  }
  passwordValidator(){

  //     validator: (value) {
  //                     if (value == null || value.isEmpty) {
  //                       return 'Please enter your name';
  //                     }
  //                     return null;
  //                   },
  //                   onSaved: (value) {
  //                     _name = value!;
                    
  }
}


