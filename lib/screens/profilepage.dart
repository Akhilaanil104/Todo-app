import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo_app/utils/pickimage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Uint8List? _image;
  void selectImage() async {
    Uint8List img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 40, left: 20),
            child: Row(
              children: [

                _image != null ? CircleAvatar(
                  radius:50 ,
                  backgroundImage: MemoryImage(_image!),
                ):
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://i.pinimg.com/736x/ff/a0/9a/ffa09aec412db3f54deadf1b3781de2a.jpg'),
                  radius: 50,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Ashik",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            child: IconButton(
              onPressed: () {
                selectImage;
              },
              icon: Icon(
                Icons.add_a_photo,
                color: Colors.red,
              ),
            ),
            bottom: -15,
            left: 80,
          ),
        ],
      ),
    );
  }
}
