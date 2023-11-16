import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

ValueNotifier<int> IndexNavNotifier = ValueNotifier(0);

class BottomNavigationWidgets extends StatelessWidget {
  const BottomNavigationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: IndexNavNotifier,
        builder: (BuildContext context, int newindex, Widget? _) {
          return BottomNavigationBar(
              currentIndex: newindex,
              onTap: (value) {
                IndexNavNotifier.value = value;
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              selectedItemColor: Color(0xfffaaa14),
              unselectedItemColor: Colors.black,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.search), label: 'さがす'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.briefcase), label: 'お仕事'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.qrcode_viewfinder), label: '打刻する'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.chat_bubble_text), label: 'チャット'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline_sharp), label: 'マイページ'),
              ]);
        });
  }
}
