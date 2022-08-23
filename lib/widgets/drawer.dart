import 'package:flutter/material.dart';
class drawer extends StatelessWidget {
  const drawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(decoration: BoxDecoration(
            color: Colors.amberAccent,
          ),
            child: Text("Hello",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            leading: IconButton(icon: Icon(Icons.account_circle,size: 25,),onPressed: (){},),
            title: Text("Profile",
              style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
          ListTile(
            leading: IconButton(icon: Icon(Icons.settings,size: 25,),onPressed: (){},),
            title: Text("Settings",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
          ),
          ListTile(
            leading: IconButton(icon: Icon(Icons.logout_sharp,size: 25,),onPressed: (){},),
            title: Text("Logout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
          ),
          ListTile(
            leading: IconButton(icon: Icon(Icons.local_grocery_store_outlined,size: 25,),onPressed: (){},),
            title: Text("Your Order",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
