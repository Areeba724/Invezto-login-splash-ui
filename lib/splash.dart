import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invezto_app/main.dart';

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/images/splash.jpeg',
              fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,),
            Center(child: Text('INVEZTO',style: TextStyle(
                color: Colors.white,fontSize: 34,fontWeight: FontWeight.bold),))
          ],
        ),
      )

    );
  }
}