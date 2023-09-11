import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_camp2/screens/signInScreen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    Timer(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();} ));
    });
    return (
    Scaffold(
      backgroundColor: Colors.blue,
      body: Center(child: Image.asset('assets/images/5553769.png')),
    )
    );
  }
}
