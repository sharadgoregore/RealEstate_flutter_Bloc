import 'dart:async';

import 'package:flutter/material.dart';
import 'package:onlinemakeupstore/ui/Homescreen.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatefulWidget {
  // const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/homebb.jpg"),
                      fit: BoxFit.fill)),
            ),
            Positioned(
              bottom: 100,
              left: 00,
              right: 00,
                child: Center(
                  child: CircularProgressIndicator(),
                )),

            //CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
