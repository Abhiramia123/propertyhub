import 'package:flutter/material.dart';

class registerscreen extends StatefulWidget {
  const registerscreen({super.key});

  @override
  State<registerscreen> createState() => _registerscreenState();
}

class _registerscreenState extends State<registerscreen> {
  final name=TextEditingController();
  final email=TextEditingController();
  final phone=TextEditingController();
  final code=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7),
          BlendMode.dstATop
          ),
          image: AssetImage('assets/image/build.jpeg',
        
        ),fit: BoxFit.fill,
        opacity: 1.6
      ),),
      child: ListView(
        children: [
          Padding(
          padding: const EdgeInsets.only(top:20),
          child: Container(
            height: 200,
            width: 200,
            child: Image(image: AssetImage('assets/image/property-hub-high-resolution-logo-transparent.png')),
          ),
        ),
         Center(
           child: Text('Register',
                 style: TextStyle(fontWeight: FontWeight.bold,
                 fontSize: 30,
                 color: Colors.white),),
         ),
         Padding(
          padding: const EdgeInsets.only(top: 15,left: 10,right: 10),
          child: TextField(
            controller: name,
            decoration: InputDecoration(
               filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              hintText: 'Enter Full Name'
            ),
          ),
          
        ),
         Padding(
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
          child: TextField(
            controller: email,
            decoration: InputDecoration(
               filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              hintText: 'Email address'
            ),
          ),
          
        ),
         Padding(
          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
          child: TextField(
            controller: phone,
            decoration: InputDecoration(
               filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              hintText: 'Contact number'
            ),
          ),
          
        ),
         Padding(
          padding: const EdgeInsets.only(top:10,left: 10,right: 10),
          child: TextField(
            controller: code,
            decoration: InputDecoration(
               filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              hintText: 'Refferal code'
            ),
          ),
          
        ),
         Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(height: 60,
          width: 350,
          child: Card(shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            
          ),color: Colors.green,
          child: Center(child:
           Text('REGISTER',
          style: TextStyle(color: Colors.white),)
          ),
          ),
          ),
        ),
        Row(children: [
          Expanded(child:
           Padding(
             padding: const EdgeInsets.only(left:10,right: 10),
             child: Divider(color: Color.fromARGB(255, 86, 223, 91),),
           )),
        Text('OR',
        style: TextStyle(fontSize: 15,color:const Color.fromARGB(255, 97, 221, 101)),),
        Expanded(child: 
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Divider(color: const Color.fromARGB(255, 86, 211, 90),),
        ))
        ],),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
            child: Text('Register with',
            style: TextStyle(color: Colors.white,
            fontSize: 18
            ),
            ),
          ),
        ),
            InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(top:10,left: 10,right: 10),
    child: Container(
      height: 60,
      width: 330,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
        
      child: Padding(
        padding: EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset('assets/image/download.png',height: 35,
              ),SizedBox(width: 10),
              Text('Register with google',
              style: TextStyle(fontSize: 17,
              
              ),),
              
            ],
           
            
            ),
            ),
            ),
  ),
        ),
        Center(
          child: InkWell(
            child: Text('Already register ? signin',
            style: TextStyle(fontSize: 20,
            color: Colors.white
            ),),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        )

        ],
      ),
    ),);
  }
}