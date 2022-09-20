
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

import '../models/product.dart';
import '../shared/helpers.dart';
import '../widgets/product_card.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  List<Product> _items = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _items.isNotEmpty
            ? Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 400,
                      childAspectRatio: 181/234,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,

                      // crossAxisCount:
                      //     screenWidth(context) > screenHeight(context) ? 3 : 1,
                      // childAspectRatio: 181 / 234,
                      // crossAxisSpacing: 18,
                      // mainAxisSpacing: 20
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    /* return Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Text(_items[index].id.toString()),
                        title: Text(_items[index].name),
                        subtitle: Text(_items[index].desc),
                      ),
                    );*/
                    return ProductCard(
                      id: _items[index].id,
                      name: _items[index].name,
                      desc: _items[index].desc,
                      logo: _items[index].logo,
                      url: _items[index].url,
                      rating: _items[index].rating,
                      cuisine: _items[index].cuisine,
                    );
                  },
                  shrinkWrap: true,
                  primary: false,
                ),
              )
            : Container(),
      ],
    );
  }

  Future<void> readJson() async {
    //final String response = await rootBundle.loadString('json/hotels.json');
    List<dynamic> data = jsonDecode(jsonText)["products"];

    setState(() {
      _items = data.map((object) => Product.fromJson(object)).toList();
    });
  }


  String jsonText = '''{
      "products": [
  {
  "id": 1,
  "name": "The South Indian",
  "logo": "images/south_indian_logo.png",
  "rating": 4.9,
  "desc": "At Sweden's only Indian Chettinad restaurant, relish an extraordinary culinary experience of crisp rice pancakes stuffed with delicious fillings and curries oozing with rustic flavours.",
  "url": "https://qopla.com/restaurant/the-south-indian---catering/qDQjmVpkGP/order",
  "cuisine": "Indian, South, Cafe"
  },
  {
  "id": 2,
  "name": "Saravanaa Bhavan",
  "logo": "images/saravanaa_logo.png",
  "rating": 4.8,
  "desc": "Long-running international chain serving up South Indian vegetarian dishes, including dosas.",
  "url": "https://qopla.com/restaurant/saravanaa-bhavan---catering/qyZL8kZY3M/order",
  "cuisine": "Indian, South, Cafe"
  },
  {
  "id": 3,
  "name": "Pataka",
  "logo": "images/pataka_logo.png",
  "rating": 4.9,
  "desc": "Pataka represents a modern take on the deep rooted, diverse traditions myriads of regional cuisines and vibrant folk art from the only surviving ancient civilizations’ of the world.",
  "url": "https://qopla.com/restaurant/pataka---catering/qPa0pkKj3q/order",
  "cuisine": "Indian, North"
  },
  {
  "id": 1,
  "name": "The South Indian",
  "logo": "images/south_indian_logo.png",
  "rating": 4.9,
  "desc": "At Sweden's only Indian Chettinad restaurant, relish an extraordinary culinary experience of crisp rice pancakes stuffed with delicious fillings and curries oozing with rustic flavours.",
  "url": "https://qopla.com/restaurant/the-south-indian---catering/qDQjmVpkGP/order",
  "cuisine": "Indian, South, Cafe"
  },
  {
  "id": 2,
  "name": "Saravanaa Bhavan",
  "logo": "images/saravanaa_logo.png",
  "rating": 4.8,
  "desc": "Long-running international chain serving up South Indian vegetarian dishes, including dosas.",
  "url": "https://qopla.com/restaurant/saravanaa-bhavan---catering/qyZL8kZY3M/order",
  "cuisine": "Indian, South, Cafe"
  },
  {
  "id": 3,
  "name": "Pataka",
  "logo": "images/pataka_logo.png",
  "rating": 4.9,
  "desc": "Pataka represents a modern take on the deep rooted, diverse traditions myriads of regional cuisines and vibrant folk art from the only surviving ancient civilizations’ of the world.",
  "url": "https://qopla.com/restaurant/pataka---catering/qPa0pkKj3q/order",
  "cuisine": "Indian, South, Cafe"
  }
  ]
}''';

}
