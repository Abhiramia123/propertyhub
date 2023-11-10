import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final name=TextEditingController();
  final email=TextEditingController();
  final mobile=TextEditingController();
  final password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 27, 63, 28),
      title: Text('user profile'),
      
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(children: [
                Container(
                height:100,
              width: double.infinity,
              color: const Color.fromARGB(255, 230, 221, 221),
              ),
             Stack(
               children: [
                 Container(height: 600,
                 width: double.infinity,
                 color: Colors.white),
                 Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 80,left: 30),
                      child: Container(
                     height:40,
                        width: 150,
                                 
                      decoration: BoxDecoration(
                       color: const Color.fromARGB(255, 21, 71, 23),
                        borderRadius: BorderRadius.circular(30)),
                         child: Center(child: Text('Change image',
                           style: TextStyle(fontSize: 17,
                           color: Colors.white),)),


                                 ),
                    ),
             Padding(
               padding: const EdgeInsets.only(top: 80,left:30),
               child: Container(height: 40,
               width: 120,
               
               decoration: BoxDecoration(
                color: const Color.fromARGB(255, 129, 128, 128),
                borderRadius: BorderRadius.circular(30)),
                child: Center(child: Text('Remove',
                style: TextStyle(fontSize: 17,
                color: Colors.white),)),

               ),
             ),
                 ],),
                 Column(
                 children: [Padding(
                   padding: const EdgeInsets.only(top: 160,
                   left: 10,
                   right: 10,
                   ),
                   child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Name'
                                 ),),
                 ),

                                Padding(
                   padding: const EdgeInsets.only(top: 10, left: 10,
                   right: 10,),
                   child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                    hintText: 'Email'
                    ),),
                 ),
                   Padding(
                     padding: const EdgeInsets.only(top:10, left: 10,
                   right: 10,),
                     child: TextField(
                      controller: mobile,
                      decoration: InputDecoration(
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                          hintText: 'Mobile'
                                     ),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top:10, left: 10,
                   right: 10,),
                     child: TextField(
                      controller: password,
                      decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                                     ),
                                     hintText: 'Password'
                                     
                                     ),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top: 20,
                     right: 210),
                     child: Container(
                      height: 45,
                     width: 120,
                        
                     decoration: BoxDecoration(
                       color: Color.fromARGB(255, 125, 121, 121),
                      borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text('update',
                      style: TextStyle(fontSize: 18,
                      color: Colors.white),)),
                     ),
                   ),
                   
                               ],
                               
                 )
               ],
             ),
              ],
              ),
              Positioned(
                top: 50,left:140,
                child: CircleAvatar(radius: 50,
                backgroundImage: AssetImage('assets/image/download (1).jpeg'),
                )),
                
                
            ],
          ),
        ],
      ),
      );
  }
}