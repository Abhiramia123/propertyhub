import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:propertyhubflutter/api/api.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
   
    
  }
  
  final relation = "agent";
  final name=TextEditingController();
  final phone=TextEditingController();
  final email=TextEditingController();
  String? rent ;
  String? sale ;
  String? realation ;
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
                                              onChanged: (newvalue) {
                                                setState(() {
                                                  rent=newvalue;
                                                });
                                              },
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
                                              onChanged: (neqwvalue2) {
                                                sale=neqwvalue2;
                                              },
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
                                                onChanged: (newvalue3) {
                                                  realation=newvalue3;
                                                },
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
                                    listuser();             
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
   Future<void> listuser() async {
   final _Name = name.text;
     final _phone = phone.text;
      final _mail = email.text;
    

    if (_Name.isEmpty) {
      showErrorMessage('Please enter name');
    } 
    else if (_phone.isEmpty){
      showErrorMessage('please enter phonenumber');
    }
    else if (_mail.isEmpty){
      showErrorMessage('please enter mail');
    }
  
    
    
     else {
      final _formdata = FormData.fromMap({
       'name': _Name,
        'phone': _phone,
        'email': _mail,
        'no_of_rental_properties': rent,
        'no_of_sale_properties': sale,
        'property_rel': realation
        
      });
      
      final result = await ApiClass().listUserApi(_formdata);
      if (result != null) {
        if (result.status == 200) {
          showSuccessMessage("successfully");
        } else {
          showErrorMessage("usernotfound");
        }
      }
    }
  }
   void showErrorMessage(String message) {
    MotionToast.error(
      title: Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }
  void showSuccessMessage(String message) {
   
    MotionToast.success(
      title: Text(
        'Success',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(message),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
      animationDuration: Duration(milliseconds: 3),
    ).show(context);
  }
}
