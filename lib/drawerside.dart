import 'package:flutter/material.dart';

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
                color: Colors.green,
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                accountName: 
                Text(
                  "Abdul Rahman",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("abdulrahman977@gmail.com"),
                // currentAccountPictureSize: Size.fromRadius(30),
                currentAccountPicture: CircleAvatar(
                  radius: 20,
                 
                  backgroundImage: AssetImage('assets/image/download (1).jpeg',
                  ),
                ),
                
                ),
                
            ), 
             ListTile(
              leading:  Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              
              title: const Text('My property '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading:  Icon(Icons.key),
              title: const Text(' List property '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.notifications),
              title: const Text(' Notification '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Divider(color: Colors.black,
            indent: 15,
            endIndent: 15,)
      ]
              ),
    );
  }
}