import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class CreateAccountButton extends StatefulWidget {
  const CreateAccountButton({super.key});

  @override
  State<CreateAccountButton> createState() => _CreateAccountButtonState();
}

class _CreateAccountButtonState extends State<CreateAccountButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 60,
          width: 350,
          child: TextButton(
            onPressed: () {},
            child: ElevatedButton(
              style: ButtonStyle(
                  side: WidgetStateProperty.all(
                      BorderSide(color: ColorApp.mainText)),
                  backgroundColor: WidgetStateProperty.all(ColorApp.bgcolor)),
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed('/signup');
                });
              },
              child: Center(
                child: Text(
                  "Create new account",
                  style: TextStyle(
                    fontFamily: "Teko",
                    color: ColorApp.mainText,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
