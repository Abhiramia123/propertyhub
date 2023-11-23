import 'package:flutter/material.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  
  final date=['01-05-2022','01-01-2022','07-02-2022'];
  final amount=['SAR 6,667.00','SAR 6,667.00','SAR 6,667.00'];
  final paid=['SAR 2,000.00','SAR 0','SAR 0'];
  final balance=['SAR 4,667.00','SAR 6,667.00','SAR 6,667.00'];
  final status=['Partially paid','Unpaid','Unpaid'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
       iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: const Color.fromARGB(255, 31, 74, 32) ,
      title: Text('Due details',style: TextStyle(color: Colors.white)),),
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
                    Row(children: [Text('Due Date : '),
                    Text(date[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,)
                    
                    
                    ],),
                    Row(children: [Text('Due Amount : '),
                    Text(amount[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 25,)
                    ],),
                    Row(children: [Text('Paid : '),
                    Text(paid[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 25,)
                    ],),
                     Row(children: [Text('balance : '),
                    Text(balance[index],style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 25,)
                    ],),
                     Row(children: [Text('status : '),
                    Text(status[index],style: TextStyle(fontWeight: FontWeight.bold,
                    color: Colors.red),),
                    SizedBox(height: 25,)
                    ],),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: ElevatedButton(
                           style: ButtonStyle(
                              fixedSize: MaterialStatePropertyAll(Size(130,40)),
                            backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 30, 83, 31),
                            
                            ),
                           
                              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                borderRadius: BorderRadiusDirectional.circular(10)
                              ))
                            ),
                            onPressed: (){
                           
                          }, child: Text('pay Now',style: TextStyle(color: Colors.white)),
                           
                          ),
                        ),
                      ],
                    )
                    
                 
                 
                  ],),
                  
                  
              ),
              
              
              
              ),
            ),
        );
      }),
      );
  }
}