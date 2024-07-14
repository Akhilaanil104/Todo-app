import 'package:flutter/material.dart';

class TodoAddScreen extends StatefulWidget {
  const TodoAddScreen({super.key});

  @override
  State<TodoAddScreen> createState() => _TodoAddScreenState();
}

class _TodoAddScreenState extends State<TodoAddScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _subtitleController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _subtitleController.dispose();
    super.dispose();
  }

  void _saveTodo() {
    if (_formKey.currentState?.validate() ?? false) {
      final title = _titleController.text;
      final subtitle = _subtitleController.text;

      // Save the todo (for example, you can save it to a database or a list)
      print('Title: $title, Subtitle: $subtitle');

      // Clear the text fields
      _titleController.clear();
      _subtitleController.clear();

      // Show a snackbar or navigate back
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Todo added successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Todo')),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Add Todo', style: TextStyle(fontSize: 24)),
              SizedBox(height: 30),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _subtitleController,
                decoration: InputDecoration(
                  labelText: 'Subtitle',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a subtitle';
                  }
                  return null;
                },
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: _saveTodo,
                  child: Text('Add Todo'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// class TodoAddScreen extends StatefulWidget {
//   const TodoAddScreen({super.key});

//   @override
//   State<TodoAddScreen> createState() => _TodoAddScreenState();
// }

// class _TodoAddScreenState extends State<TodoAddScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _titleController = TextEditingController();

//   @override
//   void dispose() {
//     _titleController.dispose();
//     super.dispose();
//   }

//   void _saveTodo() {
//     if (_formKey.currentState?.validate() ?? false) {
//       final title = _titleController.text;

//       // Return the value to the previous screen
//       Navigator.of(context).pop(title);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Add Todo')),
//       body: Container(
//         padding: EdgeInsets.all(20),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text('Add Todo', style: TextStyle(fontSize: 24)),
//               SizedBox(height: 30),
//               TextFormField(
//                 controller: _titleController,
//                 decoration: InputDecoration(
//                   labelText: 'Title',
//                   border: OutlineInputBorder(),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter a title';
//                   }
//                   return null;
//                 },
//               ),
//               SizedBox(height: 30),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: _saveTodo,
//                   child: Text('Add Todo'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
