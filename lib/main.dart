import 'package:flutter/material.dart';
import 'package:warde/View/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff610ce3),
        backgroundColor: const Color(0xff44b2f0),
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

