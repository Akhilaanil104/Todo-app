import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/firebase_options.dart';
import 'package:todo_app/screens/login_page.dart';

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
        textTheme: TextTheme(displayMedium: TextStyle(color: Colors.white10)),
        scaffoldBackgroundColor: Color.fromARGB(255, 16, 104, 87),
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 15, 5, 34)),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
  
  
}

 