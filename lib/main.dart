import 'package:flutter/material.dart';
import 'package:jiitak_test/Screens/HomeScreen.dart';
import 'package:jiitak_test/Screens/MainPge.dart';
import 'package:jiitak_test/Screens/StampDetails.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xfffaaa14)),
        useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}


