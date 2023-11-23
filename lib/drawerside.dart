import 'package:flutter/material.dart';
import 'package:propertyhubflutter/list.dart';
import 'package:propertyhubflutter/login.dart';
import 'package:propertyhubflutter/notification.dart';
import 'package:propertyhubflutter/profile.dart';
import 'package:propertyhubflutter/property.dart';

class drawerside extends StatelessWidget {
  const drawerside({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
             
              
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 40, 109, 42)
              ),
              
              child: Row(children: [
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [CircleAvatar(
                  backgroundImage: AssetImage('assets/image/download (1).jpeg'),
                radius: 35,
                
                )],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40,left:5),
                  child: Text('Abdul Rahman',
                  style: TextStyle(color: Colors.white),),
                ),
               
                Padding(
                  padding: const EdgeInsets.only(top:5,left: 5,),
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
                Navigator.push(context,MaterialPageRoute(builder: (context)=>profile()));
              },
            ),
             ListTile(
              leading: Icon(Icons.house),
              title:  Text('My property '),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>property()));
              },
            ),
             ListTile(
              leading:  Icon(Icons.key),
              title:  Text(' List property '),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>list()));
              },
            ),
             ListTile(
              leading: Icon(Icons.notifications),
              title:  Text(' Notification '),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>notification()));
              },
                       ),
            Divider(color: Colors.black,
            indent: 15,
            endIndent: 15,),
            ListTile(
              title: TextButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                 
                  content: Text("Dou you want to logout ?"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                        child:  Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                         
                          children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text('No'),
                          ),
                         
                          InkWell(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context)=>loginscreen()));
                            },
                            child: Text('Yes'))
                        ],)
                      ),
                    
                  ],
                ),
              );
            },
            child:  Text("logout"),
          ),

            )
      ]
              ),
    );
  }
}