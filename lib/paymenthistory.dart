import 'package:flutter/material.dart';

class paymenthistory extends StatefulWidget {
  const paymenthistory({super.key});

  @override
  State<paymenthistory> createState() => _paymenthistoryState();
}

class _paymenthistoryState extends State<paymenthistory> {
 final date=['2023-02-09','2023-02-09'];
 final payment=['Rent payment','Security payment'];
 final rent=['SAR 2,000.00','SAR 500.00'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
       iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color.fromARGB(255, 22, 76, 23),
      title: Text('Payment history',style: TextStyle(color: Colors.white)),
    ),
   backgroundColor: Colors.white,
    body: 
         Column(
           children: [

Container(
  height: 120,
  width: double.infinity,
  decoration: BoxDecoration(
     color: Colors.white,
     borderRadius: BorderRadius.circular(10)
  ),
  child: Row(
    children: [Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(height: 70,
      width: 110,
      color: Colors.amber,
      child: Image(image: AssetImage('assets/image/download (2).jpeg'),fit: BoxFit.fill,),
      ),
    ),Padding(
      padding: const EdgeInsets.only(top:25,
      left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text('1'),
        SizedBox(height: 5,),
        Text('property Code : #REG15675'),
         SizedBox(height: 10),
        Text('Rent : SAR 35,000.00',
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 17
        ),),
         SizedBox(height: 10),
        ],
      ),
    )
    ],
  ),
),
 Divider(
                                
                                color: Color.fromARGB(255, 231, 225, 225),thickness:10,),
             Expanded(
               child: ListView.builder(
                          itemCount: 2,
                          itemBuilder: (context,index){
                          return Column(
                            children: [
                             
                              Container(height: 60,
                              width: double.infinity,
                              decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10)
                              ),
                              child:  Padding(
                                padding: const EdgeInsets.only(left: 10,top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text(date[index]),
                                  SizedBox(height: 10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [Text(payment[index],
                                 ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Text(rent[index],
                                  style: TextStyle(color: Colors.red),),
                                )
                                ],)
                                ],),
                              ),
                              ),
                               Divider(
                                
                                color: Color.fromARGB(255, 231, 225, 225),thickness:10,),
                             
                            ],
                          );
                        },
                        ),
             ),
           ],
         ) ,
      
    );
        
    
    
    
    
        
       
    
    
    
  }
}