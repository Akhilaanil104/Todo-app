import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CircleAvatar(
        child: Icon(Icons.add),
        backgroundColor: Colors.white,
      ),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 7, 56, 44),
        title: Center(
          child: Text(
            "TODO",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      child: InkWell(
                        child: Text("Profile"),
                        onTap: () {
                          Navigator.of(context).pushNamed('/profile');
                        },
                      ),
                    ),
                    PopupMenuItem(child: Text("Logout"))
                  ])
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          children: [
            Text(
              "ToDo Lists",
              style: TextStyle(fontSize: 38, color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      "hello",
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing:
                        IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
                  );
                },
              ),
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(29)),
                  fillColor: Colors.black12,
                  hintText: "Enter Task"),
            )
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:todo_app/screens/addtodo.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {
//   String? task;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: () async {
//           final result = await Navigator.of(context).pushNamed('/addtodo');
//           if (result != null && result is String) {
//             setState(() {
//               task = result;
//             });
//           }
//         },
//       ),
//       appBar: AppBar(
//         backgroundColor: Color.fromARGB(255, 7, 56, 44),
//         title: Center(
//           child: Text(
//             "TODO",
//             style: TextStyle(color: Colors.white, fontSize: 20),
//           ),
//         ),
//         actions: [
//           PopupMenuButton(
//               itemBuilder: (context) => [
//                     PopupMenuItem(
//                       child: InkWell(
//                         child: Text("Profile"),
//                         onTap: () {
//                           Navigator.of(context).pushNamed('/profile');
//                         },
//                       ),
//                     ),
//                     PopupMenuItem(child: Text("Logout"))
//                   ])
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(19.0),
//         child: Column(
//           children: [
//             Text(
//               "ToDo Lists",
//               style: TextStyle(fontSize: 38, color: Colors.white),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             if (task != null)
//               Text(
//                 'Submitted Task: $task',
//                 style: TextStyle(fontSize: 20, color: Colors.white),
//               ),
//             SizedBox(
//               height: 40,
//             ),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: 10,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(
//                       "hello",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                     trailing:
//                         IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
//                   );
//                 },
//               ),
//             ),
//             TextField(
//               decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(29)),
//                   fillColor: Colors.black12,
//                   hintText: "Enter Task"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
