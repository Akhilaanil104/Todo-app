import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Text(
                    "SIGNUP HERE",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "phonenumber",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  width: 120,
                  height: 50,
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Signup",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
