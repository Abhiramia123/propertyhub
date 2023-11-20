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
      child: ListView(
        children: [
          Column(
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
                  Padding(
                    padding: const EdgeInsets.only(left:30),
                    child: Text('view contract'),
                  ),
                   VerticalDivider(
                    color: Colors.black,
                    
                   ),
                  Padding(
                    padding: const EdgeInsets.only(right: 50),
                    child: Column(
                      children: [
                        Image(image: AssetImage('assets/image/sample-qr-code-icon-vector-260nw-529327996.webp'),
                        height: 65,
                        width: 65,
                        
                        ),
                        Text('Key')
                      ],
                    ),
                  ),
                  
                   ],
                 ),
                 
                 ),
                 SizedBox(height: 30,),
                 Divider(color: Colors.black,),
                Padding(
                               padding: const EdgeInsets.only(top: 40,right:20),
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Align(alignment: Alignment.bottomLeft,
                                                    child: ElevatedButton(
                                style: ButtonStyle(
                                fixedSize: MaterialStatePropertyAll(Size(140,40)),
                                backgroundColor: MaterialStatePropertyAll(
                                  
                                  const Color.fromARGB(255, 34, 84, 36)),
                                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                    borderRadius: BorderRadiusDirectional.circular(10)
                                  )),
                                  
                                ),
                                onPressed: (){
                                  
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>details()));
                                                     }, child: Text('Due details')),
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>paymenthistory()));
                                                     }, child: Text(' view Payment history')),
                                                  ),
                                                     ],),
                             )
            ],
          ),
        ],
      ),
    ),
    
    );

  }
}