import 'package:flutter/material.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 77, 30),
        title: Text('About'),),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image(image: AssetImage('assets/image/download.png')
            
            ),
            SizedBox(height: 10),
            Text('About us'),
            Container(height: 500,
            width: 350,
            child: Padding(
              padding: const EdgeInsets.only(top: 20,right: 20),
              child: Card(color: Colors.white,),
            ),
            )
            
          ],),
        ),
        );
  }
}