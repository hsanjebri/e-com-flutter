import 'package:ecom/pages/details.dart';
import 'package:ecom/pages/home.dart';
import 'package:ecom/pages/login.dart';
import 'package:ecom/pages/register.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: Home(),
    );
  }
}