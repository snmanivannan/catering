import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
