import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  final relation = "agent";
  final name=TextEditingController();
  final phone=TextEditingController();
  final email=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.white),
         backgroundColor: const Color.fromARGB(255, 31, 74, 32),
        title: Text('List property',style: TextStyle(color: Colors.white)),),
        body: ListView(
          children: [
            Column(
              children: [
                Container(height:120,
                width: double.infinity,
                color: Colors.amber,
                child: Image(image: AssetImage('assets/image/images 5.jpeg'),
                fit: BoxFit.fill,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10,left: 10,right: 10),
                  child: TextField(
                    controller: name,
                     decoration: InputDecoration(
                      border: OutlineInputBorder(
                      
                          ),
                     hintText: 'Name'
                                       ),),
                ),

                      Padding(
                       padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                      child: TextField(
                        controller: phone,
                      decoration: InputDecoration(
                       border: OutlineInputBorder(
                             ),
                   hintText: 'phone number'
                                                                       ),),
                                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                          child: TextField(
                            controller: email,
                                       decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                        
                          ),
                                       hintText: 'email'
                                       ),),
                        ),
                       
                       Row(
                       
                        children: [Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Number of rental properties'),
                        ),
                       Expanded(
                         child: Padding(
                           padding: const EdgeInsets.only(left:20,right: 10,top: 10),
                           child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: OutlineInputBorder()
                            ),
                            items: <String>['1', '2', '3', '4'].map((String value) {
                             return DropdownMenuItem<String>(
                              value: value,
                               child: Text(value),
                            );
                                               }).toList(),
                                              onChanged: (_) {},
                             ),
                         ),
                       ),
                       
                       ],
                        
                       ),
                      
                        Row(
                         
                        children: [Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Text('Number of properties for sale'),
                        ),
                                             Expanded(
                         child: Padding(
                           padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                           child: DropdownButtonFormField<String>(
                            decoration: InputDecoration(
                              border: OutlineInputBorder()
                            ),
                            items: <String>['1', '2', '3', '4'].map((String value) {
                             return DropdownMenuItem<String>(
                              value: value,
                               child: Text(value),
                            );
                                               }).toList(),
                                              onChanged: (_) {},
                             ),
                         ),
                                             ),
                                             
                                             ],
                        
                                             ),
                                             
                       Row(
                        
                         children: [
                           Padding(
                             padding: const EdgeInsets.only(top: 10,left: 10),
                             child: Text('Relationship with the properties'),
                           ),
                         ],
                       ),
                       SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left:10,right:10),
                        child: DropdownButtonFormField(
                          value: relation,
                              decoration: InputDecoration(
                                border: OutlineInputBorder()
                              ),
                              hint: Text('select'),
                              items: ['agent','owner'].map((String value) {
                               return DropdownMenuItem<String>(
                                value: value,
                                 child: Text(value),
                                 
                              );
                                                 }).toList(),
                                                onChanged: (_) {},
                               ),
                      ),
                      Row(
                        
                        children: [
                         Align(alignment: Alignment.bottomLeft,
                         child: Padding(
                         padding: const EdgeInsets.only(top: 10,left: 10),
                           child: ElevatedButton(
                             style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll(Size(130,40)),
                              backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 38, 95, 39)),
                               shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                 borderRadius: BorderRadiusDirectional.circular(10)
                                   ))
                                     ),
                                   onPressed: (){               
                                   }, child: Text(' Request',style: TextStyle(color: Colors.white))),
                                      ),
                                     ),
                                   Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 10),
                                   child: ElevatedButton(
                                     style: ButtonStyle(
                                     fixedSize: MaterialStatePropertyAll(Size(100,40)),
                                    backgroundColor: MaterialStatePropertyAll(Colors.grey),
                                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                                       borderRadius: BorderRadiusDirectional.circular(10)
                                             ))
                                            ),
                                              onPressed: (){
                                                Navigator.pop(context);
                                              }, child: Text('Discard',style: TextStyle(color: Colors.white))),
                                           )
                      ],)
              ],
            ),
          ],
        ),
        
    );
  }
}