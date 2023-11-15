import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 86, 35),
        title: Text('Notification'),),
        body: ListView.builder(itemBuilder:(context,index){
          return SizedBox(height:150,
          width: double.infinity,
          child: 
          Card(child:
           Column(children: [
            Row(children: [
              Expanded(
                        flex: 1,
                         child: Padding(
                           padding: const EdgeInsets.only(top:30,),
                           child: Container(
                           height: 85,
                           color: Colors.white,
                           child: Image(image: AssetImage('assets/image/icons8-building-100.png',),
                           ),
                           ),
                         ),
                       ),
                       Expanded(
                        flex: 2,
                         child: Container(
                           child: Padding(
                             padding: const EdgeInsets.only(left:10),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('dd')],
                             ))))                 
            
            ],)
          ],),
          ),
          );
        } ),
    );
    
  }
}