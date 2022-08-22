import 'package:catering/home_page.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'home_page.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacityValue = 0.9;
  void initState()
  {
    super.initState();
    Timer(
      Duration(seconds: 10),
        () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amberAccent.withOpacity(_opacityValue),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset("assets/logo.jpeg",height: 300,width: 300,fit: BoxFit.fill),
                SizedBox(height: 70),
                Text("Food Catering App",
                maxLines: 5,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.black,
                ),
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 50.0,vertical: 20.0),
                      primary: Colors.white,
                      shape: StadiumBorder(),
                    ),
                    child: Text("Get a meal",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
