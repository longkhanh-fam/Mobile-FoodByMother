import 'package:flutter/material.dart';
import 'package:fooderapp/pages/error_page.dart';
import 'package:fooderapp/pages/home_page_content_screen.dart';
import 'package:fooderapp/pages/newsfeed_screen.dart';
import 'package:fooderapp/pages/search_screen.dart';
import 'package:fooderapp/theme/font_theme.dart';
import 'package:fooderapp/utils/helpers.dart';
import 'package:fooderapp/widgets/home_big_tile.dart';
import 'package:fooderapp/widgets/home_page_recent_tile.dart';
import 'package:fooderapp/pages/camera_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentNavItem = 0;

  final List<Widget> _screens = [
    HomePageContent(),
    const NewsFeedScreen(),
    const CameraScreen(),
    SearchScreen(),
    const ErrorPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentNavItem,
        items: const [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank),
              label: 'Foodfeeds',
              activeIcon: Icon(Icons.food_bank_outlined)),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: 'Cam',
              activeIcon: Icon(Icons.search_outlined)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
              activeIcon: Icon(Icons.search_outlined)),
          BottomNavigationBarItem(
              icon: Icon(Icons.library_music_outlined),
              label: 'Library',
              activeIcon: Icon(Icons.library_music_rounded)),
        ],
        fixedColor: Colors.white,
        iconSize: 20,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: (index) {
          setState(() {
            _currentNavItem = index;
          });
        },
      ),
      backgroundColor: Colors.black,
      body: IndexedStack(
        index: _currentNavItem,
        children: _screens,
      ),
    );
  }
}
