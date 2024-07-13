import 'package:flutter/material.dart';
import 'package:todo_app/utils/colors.dart';

class AppName extends StatelessWidget {
  const AppName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
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
              );
  }
}