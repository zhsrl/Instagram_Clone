import 'package:flutter/material.dart';
import 'package:instagram_clone/main_page.dart';
import 'package:instagram_clone/profile_page.dart';
import 'package:instagram_clone/reels_page.dart';
import 'package:instagram_clone/search_page.dart';
import 'package:instagram_clone/shop_page.dart';

class HomePage extends StatefulWidget {


  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _navigateBottomBar(int index){

    setState(() {
      index = _selectedIndex;
    });

  }

  final List<Widget> _screens = [
    MainPage(),
    SearchPage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _navigateBottomBar,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
          ],
        )
    );
  }
}