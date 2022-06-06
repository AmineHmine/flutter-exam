import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
           DrawerHeader(child: Column(
             children: [
               CircleAvatar(
                 radius: 55,
               ),
               SizedBox(height: 5,),
               Text("Books Biblio"),

             ],
           ),
               ),
          Divider(height: 5,color: Colors.black,)
       ,
        ListTile(
          title: Text("Home"),
          onTap: (){
            Navigator.pushNamed(context, "/");
          },
        ),
        ListTile(
          title: Text("livres"),
          onTap: (){
            Navigator.pushNamed(context, "/livres");
          },
        ),
        ListTile(
          title: Text("membres"),
          onTap: (){
            Navigator.pushNamed(context, "/members");
          },
        )
        
        ],
      ),
    );
  }
}
