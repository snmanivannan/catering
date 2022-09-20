import 'package:flutter/material.dart';

class Bottom_Navigation_Bar extends StatefulWidget {
  const Bottom_Navigation_Bar({Key? key}) : super(key: key);

  @override
  State<Bottom_Navigation_Bar> createState() => _Bottom_Navigation_BarState();
}

class _Bottom_Navigation_BarState extends State<Bottom_Navigation_Bar> {
  int _selectedIndex = 0;
  List pages = [
    SecondScreen(),
    Favouite_Page(),
    Filtter_Page(),
    Product_Screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Row(
        children: [
          buildNavigationItem(Icons.house, 0),
          buildNavigationItem(Icons.favorite, 1),
          buildNavigationItem(Icons.filter_alt, 2),
          buildNavigationItem(Icons.shopping_cart_outlined, 3),
        ],
      ),
    );
  }

  Widget buildNavigationItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 53,
            width: 45,
            child: Icon(icon,
                color: index == _selectedIndex
                    ? Color(0xff3FC979)
                    : Color(0xffc5c5c5)),
            decoration: index == _selectedIndex
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xff3FC979), width: 1.5))
                : BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xffc5c5c5), width: 1.5)),
          ),
        ),
      ),
    );
  }
}
