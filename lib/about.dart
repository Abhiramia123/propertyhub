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
      backgroundColor: Color.fromARGB(255, 217, 214, 214),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 28, 77, 30),
        title: Text('About'),),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20),
          child: ListView(
            children: [
             Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Image(image: AssetImage('assets/image/download.png'),height:40,
            
            ),
            SizedBox(height: 10),
            Text('About us',
            style: TextStyle(fontWeight: FontWeight.bold),),
            
            
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20),
              child: Card(
                
                elevation: 0,
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.black,width:0.5)
              ),
              
              child: SizedBox(width: 400,
              height: 450,
              child:Column(
               
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                   Padding(
                     padding: const EdgeInsets.only(top: 20,left: 20),
                     child: Image(
                                     image: AssetImage('assets/image/icons8-building-100.png'),
                                     height:70,),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left:25),
                    child: Text('Real Estate?',
                    style: TextStyle(fontSize:20,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                    
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5,left: 25),
                    child: Text('We have your back.',
                    style: TextStyle(fontSize:20,
                    fontStyle:FontStyle.italic,
                    fontWeight: FontWeight.bold
                    ),
                    ),
                    
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20,left:25,right: 20),
                    child: Align
                    (
                      alignment: Alignment.topLeft,
                      child: Text('Propertyhub, a cloud solution powered by SECOTECH, makes property management simple for you. it promotes a transparent relationship between the owner, the manager, and the tenant.',
                      
                      )),
                  ),
                 
                  Align(alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top:50,left: 25,right:20),
                    child: Text('For more information please contact: websevices@propertyhub.com or please visit our websitw: https:// propertyhub.com',
                   
                    ),
                  ),
                  
                  )
                  ,],)
              ),
              
              ),
            ),
            
            
            
          ],),
            ],
          ),
          
        ),
        );
  }
}