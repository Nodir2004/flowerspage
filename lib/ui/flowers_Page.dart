import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class flowersPage extends StatefulWidget {
  const flowersPage({super.key});

  @override
  State<flowersPage> createState() => _flowersPageState();
}

class _flowersPageState extends State<flowersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.sort,
            color: Colors.black,
          ),
          actions: [],
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(bottom: 20, left: 30, right: 20, top: 20),
          child: Column(
            children: [
              Title(
                color: Colors.black,
                child: Text("Flowers", style: TextStyle(fontSize: 40)),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade800),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Colors.deepOrangeAccent.shade700),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "Collect Your Flowwers",
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
              
            ],
          ),
        ),

         bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.white, items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "home",
          backgroundColor: Colors.pink.shade300,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Gifts",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo_camera),
          label: "local_offer_sharp",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Me",
        ),
      ]),
        );
  }
}
