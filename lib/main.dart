import 'package:flutter/material.dart';
import 'package:task_camp2/screens/splashScreen.dart';
void main() {
  runApp(const Task1());
}

class Task1 extends StatelessWidget {
  const Task1({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );

  }


}