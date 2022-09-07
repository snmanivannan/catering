import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductCard extends StatelessWidget {
  final int id;
  final String name, logo, desc, url, cuisine;

  final double rating;

  //final bool isFavourite, isPopular;

  const ProductCard({Key? key,
    required this.id,
    this.rating = 0.0,
    required this.name,
    required this.logo,
    required this.desc,
    required this.url,
    required this.cuisine})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 30,
      shadowColor: Colors.deepPurpleAccent,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
      child: Column(
        children: [
      Expanded(
      child: Container(
      margin: EdgeInsets.only(
        left: 30,
        right: 30,
        top: 21,
      ),
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            margin: const EdgeInsets.only(
              bottom: 8,
            ),
            child: Image.asset(
              logo,
              fit: BoxFit.fill,
              alignment: Alignment.topCenter,
              //height: 100,
            ),
          )
        ],
      ),
    ),
    ),



    SizedBox(height: 10),
    Container(
    margin: EdgeInsets.only(left: 20),
    alignment: Alignment.topLeft,
    child: Text(
    name,
    style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.black),
    ),
    ),
    SizedBox(height: 10),
    Container(
    margin: EdgeInsets.only(left: 20),
    alignment: Alignment.topLeft,
    child: Row(
    children: <Widget>[
    IconButton(
    onPressed: () {},
    icon: Icon(
    Icons.star,
    color: Colors.yellow,
    )),
    IconButton(
    onPressed: () {},
    icon: Icon(Icons.star, color: Colors.yellow)),
    IconButton(
    onPressed: () {},
    icon: Icon(Icons.star, color: Colors.yellow)),
    IconButton(
    onPressed: () {},
    icon: Icon(Icons.star, color: Colors.yellow)),
    IconButton(
    onPressed: () {},
    icon: Icon(Icons.star_half, color: Colors.yellow)),
    ],
    ),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    margin: EdgeInsets.only(left: 20),
    alignment: Alignment.topLeft,
    child: Text(
    cuisine,
    style: TextStyle(
    fontWeight: FontWeight.w200,
    fontStyle: FontStyle.italic,
    fontSize: 15,
    color: Colors.black),
    ),
    ),
    SizedBox(height: 10),
    Container(
    margin: EdgeInsets.only(left: 20),
    alignment: Alignment.topLeft,
    child: Text(
    desc,
    style: TextStyle(fontSize: 15, color: Colors.black),
    ),
    ),
    SizedBox(height: 10),

    Container(
    decoration: BoxDecoration(
    color: Colors.orange,
    borderRadius: BorderRadius.only(
    bottomRight: Radius.circular(30),
    bottomLeft: Radius.circular(30),
    )
    ),
    child: TextButton(
    style: TextButton.styleFrom(
       //backgroundColor: Colors.orange,
        padding: const EdgeInsets.all(25),
      minimumSize: const Size(510.0, 00.0),

    ),

    child:Text(
    'ORDER NOW',
    style: TextStyle(
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontSize: 20.0,
    ),
    ),
    onPressed: () async {final Uri _url = Uri.parse(url);
      if (!await launchUrl(
       _url,
        mode: LaunchMode.externalApplication,
     )) {
       throw 'Could not launch $_url';
      }
      },
    ),
    )
    ]
    ,
    )
    ,
    );
  }
}
