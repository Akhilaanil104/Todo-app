import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/firebase_options.dart';
import 'package:todo_app/screens/homepage.dart';
import 'package:todo_app/screens/homepage.dart';
import 'package:todo_app/screens/loginpage.dart';
<<<<<<< HEAD
import 'package:todo_app/screens/signup_page.dart';
=======
import 'package:todo_app/screens/profilepage.dart';
>>>>>>> 9f12764c0ffe8e0e18d2b6472d3fd8a42a2a9e53


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        scaffoldBackgroundColor: Color.fromARGB(255, 8, 59, 49),
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 10, 92, 92)),
        useMaterial3: true,
      ),
<<<<<<< HEAD
      home: Homepage(),
=======
      home: ProfilePage(),
>>>>>>> 9f12764c0ffe8e0e18d2b6472d3fd8a42a2a9e53
    );
  }
  
  
}

 