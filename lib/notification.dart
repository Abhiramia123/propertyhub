import 'package:flutter/material.dart';
import 'package:propertyhubflutter/api/api.dart';

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  var jsonlist=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
   notifyuser();
    
  }
  String? notificationHeading;
  String? typeOfNotification;
  String? notificationText;
  String? status;
  String? date;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
         iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: const Color.fromARGB(255, 33, 86, 35),
        title: Text('Notification',style: TextStyle(color: Colors.white)),),
        body: ListView.builder(
          itemCount: jsonlist.length,
          itemBuilder:(context,index){
          return SizedBox(height:250,
          width: double.infinity,
          child: 
          Card(child:
           Column(children: [
            Row(children: [
              Expanded(
                        flex: 1,
                         child: Padding(
                           padding: const EdgeInsets.only(top:20,),
                           child: Container(
                           height: 90,
                           
                           child: Image(image: AssetImage('assets/image/icons8-building-100.png',),
                           ),
                           ),
                         ),
                       ),
                       Expanded(
                        flex: 2,
                         child: Container(
                           child: Padding(
                             padding: const EdgeInsets.only(left:10,top: 30),
                             child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(jsonlist[index].notificationHeading,
                                style: TextStyle(fontSize:15,fontWeight: FontWeight.bold),),
                                SizedBox(height: 20,),
                             Text(jsonlist[index].typeOfNotification),
                             Text(jsonlist[index].notificationText),
                            
                             Text(jsonlist[index].status),
                             SizedBox(height: 10),
                             Text(jsonlist[index].date)
                             
                              ],
                             ))))                 
            
            ],)
          ],),
          ),
          );
        } ),
    );
    
  }
  Future<void> notifyuser() async {
    final result = await ApiClass().notifyUserApi();
    setState(() {
     if(result !=null){
      if (result.status==200){
        jsonlist.addAll(result.data!.notifications!);
     
      }

     }   });
   }
}