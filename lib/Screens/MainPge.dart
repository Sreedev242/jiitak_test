import 'package:flutter/material.dart';
import 'package:jiitak_test/Screens/Chatscreen.dart';
import 'package:jiitak_test/Screens/HomeScreen.dart';
import 'package:jiitak_test/Screens/ProfileScreen.dart';
import 'package:jiitak_test/Screens/StampDetails.dart';
import 'package:jiitak_test/Screens/qrScreen.dart';
import 'package:jiitak_test/widgets/BottomNavBar.dart';

class MainPage extends StatelessWidget {
   MainPage({super.key});
final _pages=[
  HomeScreen(),StampDetails(),QR_page(),ChatPage(),ProfilePage()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
          valueListenable: IndexNavNotifier,
          builder: (context, index, child) {
            return _pages[index];
          },
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationWidgets(),
    );
  }
}