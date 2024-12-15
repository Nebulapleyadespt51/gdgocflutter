import 'package:aplikasitestgdgoc/Login.dart';
import 'package:aplikasitestgdgoc/LoginScreen/login_screen.dart';
import 'package:aplikasitestgdgoc/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Login(),
    );
  }
}