import 'package:flowers/ui/flowers_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class TulipPage extends StatefulWidget {
  const TulipPage({super.key});

  @override
  State<TulipPage> createState() => _TulipPageState();
}

class _TulipPageState extends State<TulipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink.shade200,
          title: Text(
            "Tulip",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          centerTitle: true,
          leading: CircleAvatar(
                    backgroundColor: Colors.white, 
                    child: IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context ) {flowersPage();}),);
                    },
                     icon: Icon(Icons.arrow_back)
                     )
                     ,),
          actions: [
            Icon(
              Icons.local_mall,
              color: Colors.white,
            )
          ]),
      body: Column(
        children: [
          Container(
            
            color: Colors.pink.shade200,
            width: 500,
            height: 260,
          ),

          SizedBox(height: 35),

          Text("Pink Tulip Flower",
          style: TextStyle(
            color: Colors.pink.shade200,
            fontSize: 25),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 160),
              child: Row(
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                   Icon(Icons.star,color: Colors.yellow,),
                    Icon(Icons.star,color: Colors.yellow,),
                     Icon(Icons.star,color: Colors.yellow,),
                      Icon(Icons.star,color: Colors.yellow,),
                ],
              ),
            ),
            SizedBox(height: 20,),

            Text("Ushbu sinfdan foydalanish uchun bo'limda uses-material-design: trueloyihangiz faylida o'rnatganingizga ishonch hosil qiling . Bu Material Icons shrifti ilovangizga kiritilganligini ta'minlaydi.",
            style: TextStyle(fontSize:20),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 150),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white, 
                    child: IconButton(onPressed: (){},
                     icon: Icon(Icons.switch_access_shortcut)
                     )
                     ,),
                     SizedBox(width: 30,),
                     CircleAvatar(
                    backgroundColor: Colors.pink, 
                    child: IconButton(onPressed: (){},
                     icon: Icon(Icons.favorite,color: Colors.white,)
                     )
                     ,),
                ],
              ),
            ),
            SizedBox(height: 85),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text("\$1200.00"),
                  ),
                  SizedBox(width: 40),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: Text("Oreder Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20),),
                  ),
                ],
              ),
            )
        ],
      ),
    );
  }
}
