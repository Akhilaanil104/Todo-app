

import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: CircleAvatar(child: Icon(Icons.add),backgroundColor: Colors.white,),

      appBar: AppBar(backgroundColor: Color.fromARGB(255, 7, 56, 44),

        title: Center(child: Text("TODO",style: TextStyle(color: Colors.white,fontSize: 20),),),
        
        actions: [PopupMenuButton(itemBuilder: (context) => 

        [  PopupMenuItem(child: Text("Profile")),
           PopupMenuItem(child: Text("Logout"))
               
        ]
        )
        ],),
      body: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Column(
          children: [
            Text("ToDo Lists",style: TextStyle(fontSize: 38,color: Colors.white),),
            SizedBox(height: 40,),
            Expanded(
              child: ListView.builder(itemCount: 10,itemBuilder: (context, index) {
                return ListTile(
                
                title: Text("hello",style: TextStyle(color: Colors.white),),

                trailing: IconButton(onPressed: (){}, icon: Icon(Icons.delete)),
                );
              },),
            ),
            TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(29)),
            fillColor: Colors.black12,
            hintText: "Enter Task"
            ),
            )
          ],
        ),
      ),

      
    );
  }
}