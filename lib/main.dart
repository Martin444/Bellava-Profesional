import 'package:bellava_prof/Screens/Singnin/SigninPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Bellavá',
      debugShowCheckedModeBanner: false,
  
      home: SingninPage(),
    );
  }
}

