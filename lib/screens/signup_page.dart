// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(19.0),
//           child: Container(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(19.0),
//                   child: Text(
//                     "SIGNUP HERE",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 40,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Enter name",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(19.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Enter email address",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(19.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "phonenumber",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(19.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     hintText: "Location",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(19.0),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 Container(
//                   width: 120,
//                   height: 50,
//                   child: SizedBox(
//                     height: 50,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           Navigator.pushReplacementNamed(context, '/home');
//                         });
//                       },
//                       child: Text(
//                         "Signup",
//                         style: TextStyle(fontSize: 18),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _locationController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  void _signup() {
    if (_formKey.currentState?.validate() ?? false) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(19.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(19.0),
                  child: Text(
                    "SIGNUP HERE",
                    style: TextStyle(
                      color: Colors.black, // Updated to black for visibility
                      fontWeight: FontWeight.w500,
                      fontSize: 40,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: "Enter name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: "Enter email address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email address';
                    }
                    if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                      return 'Please enter a valid email address';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _phoneController,
                  decoration: InputDecoration(
                    hintText: "Enter phone number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                      return 'Please enter a valid 10-digit phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _locationController,
                  decoration: InputDecoration(
                    hintText: "Enter location",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(19.0),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your location';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 40),
                Container(
                  width: 120,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _signup,
                    child: Text(
                      "Signup",
                      style: TextStyle(fontSize: 18),
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
