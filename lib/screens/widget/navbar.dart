import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:app_com_api/constants.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _currentIndex = 0;
  //int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavyBar(
      selectedIndex: _currentIndex,
      showElevation: false,
      itemCornerRadius: 15,
      curve: Curves.easeIn,
      backgroundColor: bgColor,
      onItemSelected: (index) => setState(
        () => _currentIndex = index,
      ),
      items: [
        BottomNavyBarItem(
            icon: const Icon(
              Icons.house_outlined,
              color: gray,
            ),
            title: const Text(
              'Home',
              style: TextStyle(
                  color: gray, fontSize: 10, decoration: TextDecoration.none),
            ),
            activeColor: royal),
        BottomNavyBarItem(
            icon: const Icon(
              Icons.dashboard_customize_outlined,
              color: gray,
            ),
            title: const Text(
              'Package',
              style: TextStyle(
                  color: gray, fontSize: 10, decoration: TextDecoration.none),
            ),
            activeColor: royal),
        BottomNavyBarItem(
            icon: const Icon(
              Icons.bar_chart_rounded,
              color: gray,
            ),
            title: const Text(
              'Statisctics',
              style: TextStyle(
                  color: gray, fontSize: 10, decoration: TextDecoration.none),
            ),
            activeColor: royal),
        BottomNavyBarItem(
            icon: const Icon(
              Icons.people_alt_rounded,
              color: gray,
            ),
            title: const Text(
              'Profile',
              style: TextStyle(
                  color: gray, fontSize: 10, decoration: TextDecoration.none),
            ),
            activeColor: royal),
      ],
    );
  }
}
