import 'package:flutter/material.dart';
import 'AuthenActicity.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void load() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          (context), MaterialPageRoute(builder: (context) => AuthenActivity()));
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    load();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text("Splash Screen"),
            backgroundColor: Colors.black12,
          ),
          body: Center(
            child: Container(
              child: Text("Legacy Plastics"),
            ),
          )),
    );
  }
}
