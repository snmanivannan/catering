import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: Text("South Indian Restaurants"),
      ),
      body:
      Container(
        height: 500,
        padding: EdgeInsets.all(2),

        child: Card(
          elevation: 10,
          //shadowColor: Colors.deepPurpleAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child:Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Image(
                  image: AssetImage("assets/flutterlogo.png"),
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text("Cafe Badilio",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    IconButton(onPressed: (){}, icon: Icon(Icons.star)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.star)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.star)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.star)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.star_half)),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text("Italian,Cafe",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Text("Small plates, Salads & sandwhiches an initimate setting with an 12 indoor seats plus patio seating",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
            ],
          ),
        ),
      ),



      drawer: Drawer(
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.delivery_dining,color: Colors.black,),label: 'delivery',),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant,color: Colors.black,),label: "dining"),
          BottomNavigationBarItem(icon: Icon(Icons.restaurant,color: Colors.black,),label: "wallet"),
          //BottomNavigationBarItem(icon: Icon(Icons.wallet,color: Colors.red),label: "Wallet")
        ],
      ),

    );
  }
}

Widget cards()
{
  return Scaffold(
    body: Container(
      height: 500,
      padding: EdgeInsets.all(2),
      child: Card(
        elevation: 10,
        //shadowColor: Colors.deepPurpleAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        margin: EdgeInsets.fromLTRB(10, 20, 10, 10),
        child:Column(
            children: [
        ClipRRect(
        borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: Image(
        image: AssetImage("assets/flutterlogo.png"),
        fit: BoxFit.fill,
      ),
    ),
    SizedBox(height: 10),
    Container(
      margin: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Text("Cafe Badilio",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black
        ),
      ),
    ),
    SizedBox(height: 20),
    Container(
      margin: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Text("Italian,Cafe",
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.black
        ),
      ),
    ),
    SizedBox(height: 20),
    Container(
      margin: EdgeInsets.only(left: 20),
      alignment: Alignment.topLeft,
      child: Text("Small plates, Salads & sandwhiches an initimate setting with an 12 indoor seats plus patio seating",
        style: TextStyle(
            fontSize: 20,
            color: Colors.black
        ),
      ),
    ),
    ],
  ),
  ),
  ),
  );
}
