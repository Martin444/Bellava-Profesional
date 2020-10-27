import 'package:bellava_prof/Screens/Home/Homepage.dart';
import 'package:bellava_prof/Screens/Singnin/SigninPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bellavá',
      debugShowCheckedModeBanner: false,
  
      home: SingninPage(),
    );
  }
}

