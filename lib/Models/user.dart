import 'package:flutter/material.dart';

class User {
  final String uid;
  final String name;
  final List miBarrio;
  final List type;
  




  User({
    Key key,
    @required this.uid,
    @required this.name,
    @required this.miBarrio,
    this.type

   });
}