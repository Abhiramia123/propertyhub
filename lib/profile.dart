import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 27, 63, 28),
      title: Text('user profile'),
      
      ),
      body: Stack(
        children: [
          Column(children: [
            Container(
            height:100,
          width: double.infinity,
          color: const Color.fromARGB(255, 230, 221, 221),
          ),
         Container(height: 550,
         width: double.infinity,
         color: Colors.white),
         Container(
      height: 30,
         width: 80,
         color: Colors.blue,
         )
          
          ],
          ),
          Positioned(
            top: 50,left:120,
            child: CircleAvatar(radius: 50,)),
            // Row(children: [Container(height: 30,
            // width: 50,
            // color: Colors.teal,),
            // Container(height: 30,
            // width: 50,
            // color: Colors.brown,)
            // ],)
        ],
      ),
      );
  }
}