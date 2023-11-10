import 'package:flutter/material.dart';
import 'package:propertyhubflutter/details.dart';
import 'package:propertyhubflutter/paymenthistory.dart';

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('1'),
    backgroundColor: const Color.fromARGB(255, 26, 67, 27),
    ),
    body: Padding(
      padding: const EdgeInsets.only(top: 10,left: 10),
      child: Column(
        children: [
          Container(height: 170,
            width: 340,
            color: Colors.amber,
            child: Image(image: AssetImage('assets/image/download (2).jpeg'),
            fit: BoxFit.fill,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                SizedBox(height: 30,),
              Text('Rent Amount :'),
              SizedBox(height: 10,),
              Text('Property code :'),
              SizedBox(height: 10,),
              Text('Contract Renewal Date :'),
              SizedBox(height: 10,),
              Text('Checkin Date :'),
              SizedBox(height: 10,),
              Text('Checkout Date :')
              ],),
             
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text('SAR 35,000.00'),
                SizedBox(height: 10,),
              Text('#REG15675'),
              SizedBox(height: 10,),
              Text('2022-01-31'),
              SizedBox(height: 10,),
              Text('2022-05-31'),
              SizedBox(height: 10,),
              Text('2022-11-21'),
              ],)
              
              ],),
             SizedBox(
              height: 60,
              child: Divider(color: Colors.black,)),
             IntrinsicHeight(
             child: 
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              Text('view contract'),
               VerticalDivider(
                color: Colors.black,
                
               ),
              Column(
                children: [
                  Image(image: AssetImage('assets/image/sample-qr-code-icon-vector-260nw-529327996.webp'),
                  height: 65,
                  width: 65,
                  
                  ),
                  Text('Key')
                ],
              ),
              
               ],
             ),
             
             ),
             SizedBox(height: 30,),
             Divider(color: Colors.black,),
            Row(children: [
               Padding(
                 padding: const EdgeInsets.only(top: 60,),
                 child: InkWell(
                   child: Container(
                    child: Center(child: Text('Due Details',
                    style: TextStyle(color: Colors.white),
                    )),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 118, 117, 117),
                      borderRadius: BorderRadius.circular(10),
                      
                    ),
                    height: 50,
                    width: 160,
                              ),onTap: () {
                                Navigator.push(
                                  context,MaterialPageRoute
                                  (builder: (context)=>details()));
                              },
                 ),
               ),
             Padding(
               padding: const EdgeInsets.only(top: 60,left: 20),
               child: InkWell(
                 child: Container(
                  child: Center(child:
                   Text('view Payment History',style: TextStyle(
                  color: Colors.white),)),
                  decoration: BoxDecoration(
                   color: const Color.fromARGB(255, 26, 71, 27),
                   borderRadius: BorderRadius.circular(10)
                  ),
                  height: 50,
                  width: 160,
                  
                 ),onTap: () {
                   Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context)=>paymenthistory()));
                 },
               ),
             )
            ],)
            
        ],
      ),
    ),
    
    );

  }
}