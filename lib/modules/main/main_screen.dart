import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:instagram_clone/modules/explore/explore_screen.dart';
import 'package:instagram_clone/modules/home/screens/home_screen.dart';
import 'package:instagram_clone/modules/profile/profile_screen.dart';
import 'package:instagram_clone/modules/reels/reels_screen.dart';
import 'package:instagram_clone/modules/shop/shop_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedNavBarIndex = 0;

  final List _screens = [
    HomeScreen(),
    ExploreScreen(),
    ReelsScreen(),
    ShopScreen(),
    ProfileScreen(),
  ];

  void _changeSelectedIndex(int index) {
    setState(() {
      _selectedNavBarIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedNavBarIndex],
      bottomNavigationBar: _buildBottomNavBar(
        currentIndex: _selectedNavBarIndex,
        action: _changeSelectedIndex,
      ),
    );
  }

  Widget _buildBottomNavBar({
    required int currentIndex,
    required Function(int index) action,
  }) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: currentIndex == 0
              ? SvgPicture.asset(
                  "assets/home.svg",
                  height: 24,
                  color: Colors.black,
                )
              : SvgPicture.asset(
                  "assets/home-outline.svg",
                  height: 24,
                  color: Colors.black,
                ),
          label: "home",
        ),
        BottomNavigationBarItem(
            icon: currentIndex == 1
              ? SvgPicture.asset(
                  "assets/search.svg",
                  height: 24,
                  color: Colors.black,
                )
              : SvgPicture.asset(
                  "assets/search-outline.svg",
                  height: 24,
                  color: Colors.black,
                ),
            label: "search"),
        BottomNavigationBarItem(
            icon: currentIndex == 2
              ? SvgPicture.asset(
                  "assets/play-circle.svg",
                  height: 24,
                  color: Colors.black,
                )
              : SvgPicture.asset(
                  "assets/play-circle-outline.svg",
                  height: 24,
                  color: Colors.black,
                ),
            label: "reels"),
        BottomNavigationBarItem(
            icon: currentIndex == 3
              ? SvgPicture.asset(
                  "assets/bag-handle.svg",
                  height: 24,
                  color: Colors.black,
                )
              : SvgPicture.asset(
                  "assets/bag-handle-outline.svg",
                  height: 24,
                  color: Colors.black,
                ),
            label: "shopping"),
        BottomNavigationBarItem(
            icon: currentIndex == 4
              ? SvgPicture.asset(
                  "assets/person.svg",
                  height: 24,
                  color: Colors.black,
                )
              : SvgPicture.asset(
                  "assets/person-outline.svg",
                  height: 24,
                  color: Colors.black,
                ),
            label: "profile"),
      ],
      currentIndex: currentIndex,
      onTap: action,
    );
  }
}
