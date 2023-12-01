import 'package:flutter/material.dart';
import 'package:propertyhubflutter/about.dart';
import 'package:propertyhubflutter/drawerside.dart';
import 'package:propertyhubflutter/list.dart';
import 'package:propertyhubflutter/notification.dart';
import 'package:propertyhubflutter/profile.dart';
import 'package:propertyhubflutter/property.dart';

var data = ['PROFILE', 'PROPERTIES', 'LIST PROPERTIES', 'ABOUT US'];
var image = [
  'assets/icons8-male-user-24.png',
  'assets/image/download (3).png',
  'assets/image/download (2).png',
  'assets/image/download (1).png'
];

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homescreenState();
}

class _homescreenState extends State<home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 31, 74, 32),
        title: Center(child: Text('Property Hub',style: TextStyle(color: Colors.white))),
        actions: [InkWell(child: Icon(Icons.notifications,),
        onTap: () {
          Navigator.push(context,MaterialPageRoute(builder: (context)=>notification()));
        },
        ),
        ],
      ),
      drawer: drawerside(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.7), BlendMode.dstATop),
                image: AssetImage('assets/image/img.jpg'),
                fit: BoxFit.cover,
                opacity: 0.5)),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: ListView(
            
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Hi Abdul Rahman',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 22, 49, 72)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Good day ahead !',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromARGB(255, 21, 51, 76)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 75),
                child: Container(
                  height: 500,
                  width: double.infinity,
                  color:
                      const Color.fromARGB(255, 209, 200, 173).withOpacity(0.1),
                  child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return SizedBox(
                            height: 85,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: InkWell(
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundColor: Colors.white,
                                          backgroundImage:
                                              AssetImage(image[index]),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 30),
                                        child: Text(
                                          data[index],
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                onTap: () {
                                 
                                  if (index == 0) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => profile(),));
                                  } else if (index == 1) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => property()));
                                  }else if (index == 2) {
                                    Navigator.push(
                                      context,MaterialPageRoute(
                                        builder: (context)=> list()));
                                  }else if (index == 3) {
                                    Navigator.push(
                                      context,MaterialPageRoute(
                                        builder: (context)=> about()));
                                  }
                                  
                                },
                              ),
                            ));
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}


