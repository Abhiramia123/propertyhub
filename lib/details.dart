import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 31, 74, 32) ,
      title: Text('Due details'),),
     backgroundColor: const Color.fromARGB(255, 199, 193, 193),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context,index)
      {
        return SizedBox(
          height: 230,
          width: double.infinity,
          
            child: Padding(
              padding: const EdgeInsets.only(top: 5,left: 5,right: 5),
              child: Card(shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ) ,
              child: Padding(
                padding: const EdgeInsets.only(top: 20,left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [Text('Due Date:'),
                    Text('01-01-2022',style: TextStyle(fontWeight: FontWeight.bold),),
                    
                    ],),
                    Text('Due Date:'),
                  SizedBox(height: 10),
                  Text('Due Amount:'),
                   SizedBox(height: 10),
                  Text('Paid:'),
                   SizedBox(height: 10),
                  Text('Balance:'),
                   SizedBox(height: 10),
                  Text('Status:')
                  ],),
                  
              ),
              
              ),
            ),
        );
      }),
      );
  }
}