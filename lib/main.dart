import 'package:flutter/material.dart';
import 'package:free4u/event_page.dart';
import 'package:free4u/home.dart';
import 'package:free4u/splashscreen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}