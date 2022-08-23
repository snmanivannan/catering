import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

import '../models/product.dart';

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
      children: [
        _items.isNotEmpty
            ? Expanded(
                child: ListView.builder(
                  itemCount: _items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      margin: const EdgeInsets.all(10),
                      child: ListTile(
                        leading: Text(_items[index].id.toString()),
                        title: Text(_items[index].name),
                        subtitle: Text(_items[index].desc),
                      ),
                    );
                  },
                ),
              )
            : Container(),
      ],
    );
  }

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('json/hotels.json');
    List<dynamic> data = jsonDecode(response)["products"];

    setState(() {
      _items = data.map((object) => Product.fromJson(object)).toList();
    });
  }
}
