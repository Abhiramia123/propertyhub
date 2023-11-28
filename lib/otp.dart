import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:propertyhubflutter/Sharedprf.dart';
import 'package:propertyhubflutter/api/api.dart';
import 'package:propertyhubflutter/home.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _listpropertyState();

  
}

class _listpropertyState extends State<otp> {
  final phone = TextEditingController();
  final code = TextEditingController();
  final code1 = TextEditingController();
  final code2 = TextEditingController();
  final code3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 36, 96, 37),
        title: Text('OTP',
        style: TextStyle(color: Colors.white)),),
        body: Align(alignment: Alignment.topCenter,
          child: ListView(
            children: [
              Column(
              children: [Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text('Verify phone',
                style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
              Text('code is send to 6785648610',
              style: TextStyle(fontSize: 15),),
              SizedBox(height: 50,),
              Row(children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left:30,right: 10),
                    
                    child: TextField(
                      controller: code,
                      decoration: InputDecoration(border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                            ))
                            ),
                  ),
                )
               
                      , Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 25,right:15),
                child: TextField(
                  controller: code1,
                  decoration: InputDecoration(border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ))
                ),
              ),
                      ), 
                      Expanded(
              child: Padding(
                padding: EdgeInsets.only(left:15,right: 25),
                child: TextField(
                  controller: code2,
                  decoration: InputDecoration(border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ))
                ),
              ),
                      ),
                      Expanded(
              child: Padding(
                padding:EdgeInsets.only(right:35,left:5),
                child: TextField(
                 controller: code3,
                  decoration: InputDecoration(border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10)
                ))
                ),
              ),
                      ),
                      ],),
                      SizedBox(height: 30,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
              Text("Did'nt receve code ? ",style: TextStyle(fontWeight: FontWeight.bold),),
                      Text(" Request again ?",style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                      ),
                      SizedBox(height: 50),
                      ElevatedButton(
              style: ButtonStyle(
                  fixedSize: MaterialStatePropertyAll(Size(300,50)),
                   backgroundColor: MaterialStatePropertyAll(
                  const Color.fromARGB(255, 34, 84, 36)),
                  
                                      
                          ),
              onPressed: (){
               otpuser();
               
              
                      }, child: Text('please wait for a few seconds',
                      style: TextStyle(color: Colors.white),))
              ],
              ),
            ],
          ),
        ),
        );
  }
   Future<void> otpuser() async {
    final _otp = code.text;
    final _otp1 = code1.text;
    final _otp2 = code2.text;
    final _otp3 = code3.text;
   

    if( (_otp.isEmpty)||(_otp1.isEmpty)||(_otp2.isEmpty)||(_otp3.isEmpty) ){
     
      showErrorMessage('Please enter otp');
    } 
    
     else {
      final _formdata = FormData.fromMap({
        'phone': "503023010",
        'otp': _otp+_otp1+_otp2+_otp3
      });
      final result = await ApiClass().otpuser(_formdata);
      if (result != null) {
        if (result.status == 200) {
          showSuccessMessage("successfully ");
          var token = result.data!.apiToken;
          print("777777777$token");
         sharedvalue(token);
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
     Navigator.push(context,MaterialPageRoute(builder: (context)=>home()));
  
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