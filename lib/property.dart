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
       iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Color.fromARGB(255, 28, 72, 30),
      title: Text(' My properties',style: TextStyle(color: Colors.white)),),
      backgroundColor: Color.fromARGB(255, 224, 220, 220),
      body: ListView.builder(
        itemCount: img.length,
        itemBuilder: (context,index){
        return SizedBox(
              height:230,
              width: double.infinity,
              child:
               Card(child:
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
                    children: [TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>payment()));
                    }, child: Text('Pay now',style: TextStyle(fontSize: 15,
                    decoration: TextDecoration.underline
                    ),))],
                      // children: [Padding(
                      //   padding: const EdgeInsets.only(right: 30),
                      //   child: Text('Pay Now',
                      //    style: TextStyle(fontSize: 15,
                      //    color: Color.fromARGB(255, 11, 51, 85),
                      //    decoration: TextDecoration.underline
                      //    ),
                      //    ),
                      // )
                      // ],
                      ),

                       Padding(
                         padding: const EdgeInsets.only(top: 20,right:40),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Align(alignment: Alignment.bottomLeft,
                                              child: ElevatedButton(
                          style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 34, 84, 36)),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(10)
                            ))
                          ),
                          onPressed: (){
                         
                                               }, child: Text('Service Request',style: TextStyle(color: Colors.white))),
                                            ),
                                           
                                               Align(alignment: Alignment.bottomLeft,
                                              child: ElevatedButton(
                          style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(10)
                            ))
                          ),
                          onPressed: (){
                         
                                               }, child: Text('vacate Request',style: TextStyle(color: Colors.white))),
                                            ),
                                               ],),
                       )
                 ],
               ),
               
               
               
                   ));
      }),
      
      );
  }
}