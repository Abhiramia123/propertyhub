import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:propertyhubflutter/api/api.dart';
import 'package:propertyhubflutter/model.dart/updatemodal.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    profileuser();
   
    
  }
  
  final name=TextEditingController();
  final email=TextEditingController();
  final mobile=TextEditingController();
  final address=TextEditingController();
  File? _profileImage;


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(appBar: AppBar(
       iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: const Color.fromARGB(255, 27, 63, 28),
      title: Text('user profile',style: TextStyle(color: Colors.white)),
      
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Column(children: [
                Container(
                height:100,
              width: double.infinity,
              color: const Color.fromARGB(255, 230, 221, 221),
              ),
             Stack(
               children: [
                 Container(height: 600,
                 width: double.infinity,
                 color: Colors.white),
                
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50,right: 20),
                    child: ElevatedButton(
                      style: ButtonStyle(
                       backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 161, 156, 156)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          
                        ))
                      ),
                      onPressed: (){
                   _pickProfileImage();
                    }, child: Text('Change image',style: TextStyle(color: Colors.white))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:50,right:40),
                    child: ElevatedButton(
                     style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(const Color.fromARGB(255, 30, 83, 31)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(20)
                        ))
                      ),
                      onPressed: (){
                 ;
                    }, child: Text('Remove',style: TextStyle(color: Colors.white))),
                  )
                    
                 ],),
                 Column(
                 children: [Padding(
                   padding: const EdgeInsets.only(top: 160,
                   left: 10,
                   right: 10,
                   ),
                   child: TextField(
                    controller: name,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    hintText: 'Name'
                                 ),),
                 ),

                                Padding(
                   padding: const EdgeInsets.only(top: 10, left: 10,
                   right: 10,),
                   child: TextField(
                    controller: email,
                    decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                    hintText: 'Email'
                    ),),
                 ),
                   Padding(
                     padding: const EdgeInsets.only(top:10, left: 10,
                   right: 10,),
                     child: TextField(
                      controller: mobile,
                      decoration: InputDecoration(
                         border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                          hintText: 'Mobile'
                                     ),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(top:10, left: 10,
                   right: 10,),
                     child: TextField(
                      controller: address,
                      decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                                     ),
                                     hintText: 'Address'
                                     
                                     ),),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Align(alignment: Alignment.bottomLeft,
                       child: ElevatedButton(
                          style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.grey),
                            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadiusDirectional.circular(10)
                            ))
                          ),
                          onPressed: (){
                        updateuser();
                        }, child: Text('Update',style: TextStyle(color: Colors.white),)),
                     ),
                   )
                   
                               ],
                               
                 )
               ],
             ),
              ],
              ),
              Align(alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: _profileImage == null? 
                  CircleAvatar(radius: 50,
                  backgroundColor: Colors.grey,
                 
                  ):CircleAvatar(radius: 50,
                  backgroundImage: FileImage(_profileImage!),)
                
                )
              ),
                
                
            ],
          ),
        ],
      ),
      );
  }
    Future<void> _pickProfileImage() async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Choose from Gallery'),
                onTap: () {
                  _getImage(ImageSource.gallery);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Take a Photo'),
                onTap: () {
                  _getImage(ImageSource.camera);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }
   Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }
 Future<void> profileuser() async {
    final result = await ApiClass().profileUserApi();
    setState(() {
     name.text = result!.data!.name.toString();
     email.text = result.data!.email.toString();
     mobile.text = result.data!.phone.toString();
     address.text = result.data!.address.toString();
    });
   }
   Future<void> updateuser() async {
   final _Name = name.text;
    final _mail = email.text;
     final _phone = mobile.text;
     final _place = address.text;

    if (_phone.isEmpty) {
      showErrorMessage('Please enter phonenumber');
    } 
     else {
      final _formdata = FormData.fromMap({
       'name': _Name,
       'email': _mail,
        'phone': _phone,
        'address': _place,
      });
      final result = await ApiClass().UpdateUserApi(_formdata);
      if (result != null) {
        if (result.status == 200) {
          showSuccessMessage("successfully updated");
        } else {
          showErrorMessage("usernotfound");
        }
      }
    }
  }
   void showErrorMessage(String message) {
    MotionToast.error(
      title: const Text(
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

