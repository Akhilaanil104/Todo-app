// // import 'dart:typed_data';

// // import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';
// // import 'package:todo_app/utils/pickimage.dart';

// // class ProfilePage extends StatefulWidget {
// //   const ProfilePage({super.key});

// //   @override
// //   State<ProfilePage> createState() => _ProfilePageState();
// // }

// // class _ProfilePageState extends State<ProfilePage> {
// //   Uint8List? _image;
// //   void selectImage() async {
// //     Uint8List img = await pickImage(ImageSource.gallery);
// //     setState(() {
// //       _image = img;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           Padding(
// //             padding: EdgeInsets.only(top: 40, left: 20),
// //             child: Row(
// //               children: [

// //                 _image != null ? CircleAvatar(
// //                   radius:50 ,
// //                   backgroundImage: MemoryImage(_image!),
// //                 ):
// //                 CircleAvatar(
// //                   backgroundImage: NetworkImage(
// //                       'https://i.pinimg.com/736x/ff/a0/9a/ffa09aec412db3f54deadf1b3781de2a.jpg'),
// //                   radius: 50,
// //                 ),
// //                 SizedBox(
// //                   width: 20,
// //                 ),
// //                 Text(
// //                   "Ashik",
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 30,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           Positioned(
// //             child: IconButton(
// //               onPressed: () {
// //                 selectImage;
// //               },
// //               icon: Icon(
// //                 Icons.add_a_photo,
// //                 color: Colors.red,
// //               ),
// //             ),
// //             bottom: -15,
// //             left: 80,
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:todo_app/utils/pickimage.dart';

// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});

//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }

// class _ProfilePageState extends State<ProfilePage> {
//   Uint8List? _image;

//   void selectImage() async {
//     Uint8List? img = await pickImage(ImageSource.gallery);
//     setState(() {
//       _image = img;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // var height = MediaQuery.of(context).size.height;
//     // var width = MediaQuery.of(context).size.width;
//        var size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: size.width,
//             height: size.height*0.20,
//             padding: EdgeInsets.only(top: 40, left: 20),
//             child: Row(
//               children: [
//                 _image != null
//                     ? CircleAvatar(
//                         radius: 50,
//                         backgroundImage: MemoryImage(_image!),
//                       )
//                     : CircleAvatar(
//                         backgroundImage: NetworkImage(
//                           'https://i.pinimg.com/736x/ff/a0/9a/ffa09aec412db3f54deadf1b3781de2a.jpg',
//                         ),
//                         radius: 50,
//                       ),
//                       Positioned(
//                   child: IconButton(
//                     onPressed: selectImage, // Fix the callback here
//                     icon: Icon(
//                       Icons.add_a_photo,
//                       color: Colors.red,
//                     ),
//                   ),
//                   bottom: 10,
//                   left: 70,
//                 ),
//                 SizedBox(
//                   width: 20,
//                 ),
//                 Text(
//                   "Ashik",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 30,
//                   ),
//                 ),
                
//               ],
//             ),
//           ),
          

//           Container(
//             height: size.height*0.80,
//           )
          
//         ],
        
//       ),
      
//     );
//   }
// }


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
    Uint8List? img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img;
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.green,Colors.blue]),
                 
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20))
                ),
                width: size.width,
                height: size.height * 0.20,
                padding: EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        _image != null
                            ? CircleAvatar(
                                radius: 50,
                                backgroundImage: MemoryImage(_image!),
                              )
                            : CircleAvatar(
                                backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/736x/ff/a0/9a/ffa09aec412db3f54deadf1b3781de2a.jpg',
                                ),
                                radius: 50,
                              ),
                        Positioned(
                          bottom: -10,
                          right: -13,
                          child: IconButton(
                            onPressed: selectImage,
                            icon: Icon(
                              Icons.add_a_photo,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
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
              // Positioned(
              //   top: size.height * 0.21,
                
              //   child:
              // Container(
              //     child: ElevatedButton(onPressed: (){}, child: Text("hi"),),
              //     width: size.width,
              //     height: size.height * 0.80,
              //     color: Color.fromARGB(255, 24, 172, 226),
              //   ),
              // ),
            ],
          ),
           SizedBox(height: 3,),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(10, 66, 12, 1),
                  blurRadius: 10, // changes the size of the shadow
                  spreadRadius: 2, // changes the spread of the shadow
                  offset: Offset(4, 3),
                  blurStyle: BlurStyle.normal // changes the position of the shadow
                ),

              ],
              gradient: LinearGradient(colors: [Colors.green,Colors.blue,]),
              // borderRadius: BorderRadius.only(topLeft: Radius.elliptical(30, 30),topRight: Radius.circular(30))
            // ,
            color: Color.fromARGB(255, 84, 131, 3),
            ),
            
            height: size.height *0.79,
          )
        ],
      ),
    );
  }
}
