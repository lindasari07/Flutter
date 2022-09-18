import 'package:flutter/material.dart';
import 'package:latihan_istilah/page/home.dart';



class HomeMenuBar extends StatefulWidget {
  const HomeMenuBar({Key? key}) : super(key: key);

  @override
  State<HomeMenuBar> createState() => _HomeMenuBarState();
}

int currentIndex = 0;
final screens = [
  const HomePage(),
  const BookmarkPage(),
];

class _HomeMenuBarState extends State<HomeMenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'Bookmark',
          ),
        ],
        iconSize: 30,
        fixedColor: Colors.yellow,
        backgroundColor: Colors.yellow,
        unselectedItemColor: Colors.black54,
      ),
    );
  }
}
