import 'package:flutter/material.dart';
import 'package:propertyhubflutter/notification.dart';

class drawerside extends StatelessWidget {
  const drawerside({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
              // decoration: BoxDecoration(
              //   color: Colors.green,
              // ),
              // child: UserAccountsDrawerHeader(
              //   decoration: BoxDecoration(color: Colors.green),
              //   accountName: 
              //   Text(
              //     "Abdul Rahman",
              //     style: TextStyle(fontSize: 18),
              //   ),
              //   accountEmail: Text("abdulrahman977@gmail.com"),
              //   currentAccountPictureSize: Size.fromRadius(30),
              //   currentAccountPicture: CircleAvatar(
              //     radius: 20,
                 
                  // backgroundImage: AssetImage('assets/image/download (1).jpeg',
              //     ),
              //   ),
                
              //   ),
              
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 40, 109, 42)
              ),
              
              child: Row(children: [
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CircleAvatar(
                  backgroundImage: AssetImage('assets/image/download (1).jpeg'),
                radius: 40,
                
                )],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40,left: 10),
                  child: Text('Abdul Rahman',
                  style: TextStyle(color: Colors.white),),
                ),
               
                Padding(
                  padding: const EdgeInsets.only(top:5,left: 10),
                  child: Text('rahman977@gmail.com',
                  style: TextStyle(color: Colors.white),),
                )
              ],),
              ],
              ),
                
            ),
             ListTile(
              leading:  Icon(Icons.person),
              title:  Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.house),
              title:  Text('My property '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading:  Icon(Icons.key),
              title:  Text(' List property '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             InkWell(
               child: ListTile(
                leading: Icon(Icons.notifications),
                title:  Text(' Notification '),
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>notification()));
                },
                         ),
             ),
            Divider(color: Colors.black,
            indent: 15,
            endIndent: 15,),
            ListTile(
              title: Text('Logout'),
            )
      ]
              ),
    );
  }
}