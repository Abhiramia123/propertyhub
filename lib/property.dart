import 'package:flutter/material.dart';
import 'package:propertyhubflutter/payment.dart';

class property extends StatefulWidget {
  const property({super.key});

  @override
  State<property> createState() => _propertyState();
}

class _propertyState extends State<property> {
  final img =['assets/image/download (2).jpeg','assets/image/images (2).jpeg','assets/image/images (3).jpeg'];
  final no=['1','3BHK','3BHK'];
  final code=['property code: #REG15675','property code: #REG978575','property code: #REG46765'];
  final rent=['rent : SAR 30,000.00','rent : SAR 35,000.00','rent : SAR 25,000.00'];
  final date=['Next Due Date : 2023-05-01','Next Due Date : 2023-02-07','Next Due Date : 2023-01-01'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 28, 72, 30),
      title: Text(' My properties'),),
      backgroundColor: Color.fromARGB(255, 224, 220, 220),
      body: ListView.builder(
        itemCount: img.length,
        itemBuilder: (context,index){
        return SizedBox(
              height:230,
              width: double.infinity,
              child:
               InkWell(
                 child: Card(child:
                 Column(
                   children: [
                     Row(
                       children: [
                         Expanded(
                          flex: 1,
                           child: Padding(
                             padding: const EdgeInsets.only(top:20,left: 10),
                             child: Container(
                             
                             color: Color.fromARGB(255, 172, 136, 44),
                             child: Image(image: AssetImage(img[index])),
                             ),
                           ),
                         ),
                         Expanded(
                          flex: 2,
                           child: Container(
                             child: Padding(
                               padding: const EdgeInsets.only(left: 10),
                               child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                                           
                                children: [ 
                                 Text(no[index]),
                                                  Text(code[index]),
                                                  Text(rent[index],style: TextStyle(fontWeight: FontWeight.bold),),
                                                  Text(date[index])
                                                  
                               ],),
                             ),
                             
                           ),
                         ),
                        
                      
                       
                       ],
                       
                     ),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [Padding(
                          padding: const EdgeInsets.only(right: 30),
                          child: InkWell(
                            child: Text('Pay Now',
                             style: TextStyle(fontSize: 15,
                             color: Color.fromARGB(255, 11, 51, 85),
                             decoration: TextDecoration.underline
                             ),
                             ),
                             onTap: () {
                               Navigator.push(context,MaterialPageRoute(
                                builder: (context)=>payment()

                               ));
                             },
                          ),
                        )],),

                         Row(children: [Padding(
                          padding: const EdgeInsets.only(left: 10,top: 30),
                          child: Container(
                             height: 40,
                          width: 150,
                          child: Center(child: Text('Service Request',
                          style: TextStyle(fontSize: 15,color: Colors.white),)),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 22, 65, 23),
                              borderRadius: BorderRadius.circular(10),
                              
                            ),
                           
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:10,top: 30),
                          child: Container(
                             height: 40,
                          width: 150,
                          child: Center(child: Text('Vacate Request',
                          style: TextStyle(fontSize: 15,
                          color: Colors.white),),),
                             decoration: BoxDecoration(
                              color: Color.fromARGB(255, 128, 126, 126),
                              borderRadius: BorderRadius.circular(10)
                            ),
                           
                          ),
                        )
                        ],)
                   ],
                 ),
                 
                 
                 
                     ),
                               
                               ));
      }),
      
      );
  }
}