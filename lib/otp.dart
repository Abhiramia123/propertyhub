import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:propertyhubflutter/home.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _listpropertyState();
}

class _listpropertyState extends State<otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 36, 96, 37),
        title: Text('OTP',
        style: TextStyle(color: Colors.white)),),
        body: Align(alignment: Alignment.topCenter,
          child: Column(
          children: [Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Text('Verify phone',
            style: TextStyle(fontSize: 25,
            fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10,),
          Text('code is send to 6785648610',
          style: TextStyle(fontSize: 15),),
          SizedBox(height: 50,),
          Row(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left:30,right: 10),
                
                child: TextField(decoration: InputDecoration(border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        ))
                        ),
              ),
            )
           
        , Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 25,right:15),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ))
            ),
          ),
        ), 
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left:15,right: 25),
            child: TextField(decoration: InputDecoration(border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ))
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right:35,left:5),
            child: TextField(
             
              decoration: InputDecoration(border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10)
            ))
            ),
          ),
        ),
        ],),
        SizedBox(height: 30,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Did'nt receve code ? ",style: TextStyle(fontWeight: FontWeight.bold),),
        Text(" Request again ?",style: TextStyle(fontWeight: FontWeight.bold),)
        ],
        ),
        SizedBox(height: 50),
        ElevatedButton(
          style: ButtonStyle(
              fixedSize: MaterialStatePropertyAll(Size(300,50)),
               backgroundColor: MaterialStatePropertyAll(
              const Color.fromARGB(255, 34, 84, 36)),
              
                                  
                      ),
          onPressed: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>home()));

        }, child: Text('please wait for a few seconds',
        style: TextStyle(color: Colors.white),))
          ],
          ),
        ),
        );
  }
}