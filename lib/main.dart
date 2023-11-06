import 'dart:async';

import 'package:flutter/material.dart';
import 'package:propertyhubflutter/login.dart';

void main(List<String> args) {
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homescreen(),
    debugShowCheckedModeBanner: false,
    );
  }
}
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  void initState() {
    super.initState();
    Timer(
     Duration(seconds: 3),
       () => Navigator.pushReplacement(
       context, MaterialPageRoute(
        builder: (context) =>loginscreen())));
  }
  Widget build(BuildContext context) {
    return Scaffold(body:Center(
      child: 
        Container(
        color: Color.fromARGB(255, 37, 97, 37),
        height: 300,
        width: 300,
       child: 
       Center(
         child: Text('PROPERTY HUB',
         style: TextStyle(fontWeight: FontWeight.bold,
         color: Colors.white,
         fontSize: 25
         ),),
       ),
      )
    ) );
  }
}