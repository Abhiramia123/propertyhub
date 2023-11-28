import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:propertyhubflutter/api/api.dart';

import 'package:propertyhubflutter/otp.dart';
import 'package:propertyhubflutter/register.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginState();
}

class _loginState extends State<loginscreen> {
  final mobilenumber=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.7),
          BlendMode.dstATop
          ),
          image: AssetImage('assets/image/build.jpg',
        
        ),fit: BoxFit.fill,
        opacity: 0.6
      ),),
      child: ListView(
        children: [
        Padding(
          padding: const EdgeInsets.only(top:20),
          child: Container(
            height: 200,
            width: 200,
            child: Image(image: AssetImage('assets/image/property-hub-high-resolution-logo-transparent.png')),
          ),
        ),
        Center(
          child: Text('Welcome Back !',
          style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white),),
        ),
        Center(
          child: Text('Login with mobile number',
          style: TextStyle(fontSize: 15,
          color: Colors.white),),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
          child: TextField(
            controller: mobilenumber,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(),
              hintText: 'Enter Mobile Number'
            ),
          ),
          
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Container(height: 60,
          width: 350,
          child: InkWell(
            child: Card(shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              
            ),color: Colors.green,
            child: Center(child:
             Text('LOGIN WITH OTP',
                     style: TextStyle(color: Colors.white),)
            ),
            ),
             onTap: () { 
               loginUser();
             
                      //  Navigator.push(context,MaterialPageRoute(
                      //   builder: (context)=>otp()));
                        
                         
                     },
          ),
          ),
        )
        
        ,Row(children: [
          Expanded(child:
           Padding(
             padding: const EdgeInsets.only(left:10,right: 10),
             child: Divider(color: Color.fromARGB(255, 86, 223, 91),),
           )),
        Text('OR',
        style: TextStyle(fontSize: 15,color:const Color.fromARGB(255, 97, 221, 101)),),
        Expanded(child: 
        Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Divider(color: const Color.fromARGB(255, 86, 211, 90),),
        ))
        ],),
        Center(
          child: Text('Login with',
          style: TextStyle(color: Colors.white,
          fontSize: 15
          ),
          ),
        ),
       
        InkWell(
  onTap: () {},
  child: Padding(
    padding: const EdgeInsets.only(top: 25,left: 10,right: 10),
    child: Container(
      height: 60,
      width: 330,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
        
      
      child: Padding(
        padding: EdgeInsets.all(6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Image.asset('assets/image/download (4).png',height: 35,
              ),SizedBox(width: 10),
              Text('Login with google',
              style: TextStyle(fontSize: 17,
              
              ),)
            ],
           
            
            ),
            ),
            ),
  ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:30),
                child: Text("don't have an account ? ",
                style: TextStyle(color: Colors.white,
                fontSize: 18),
                ),
              ),
              InkWell(
                child: Text('signup',style: TextStyle(color: Colors.white,
                fontSize: 18),),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(
                    builder: (context)=>registerscreen()));
                },
              )
            ],
          ),
        )
        ],
      ),
      
      )
    

    );
  }
  
  Future<void> loginUser() async {
    final _phone = mobilenumber.text;
    if (_phone.isEmpty) {
      showErrorMessage('Please enter phonenumber');
    } 
     else {
      final _formdata = FormData.fromMap({
        'phone': _phone,
      });
      final result = await ApiClass().loginUserApi(_formdata);
      if (result != null) {
        if (result.status == 200) {
          showSuccessMessage("successfully logged");
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
    Navigator.push(context,MaterialPageRoute(
                        builder: (context)=>otp()));
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