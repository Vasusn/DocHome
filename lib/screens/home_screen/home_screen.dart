import 'package:dochome/screens/booking_screen/booking_screen.dart';
import 'package:dochome/screens/profile_screen/profile_screen.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text('Home Page', style: TextStyle(fontSize: 20))),
    Center(child: Text('Location Page', style: TextStyle(fontSize: 20))),
    BookingScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomNavItem(
              index: 0,
              unselectedIcon: AppIconStrings.homeIcon,
              selectedIcon: AppIconStrings.homeSelectedIcon,
            ),
            _bottomNavItem(
              index: 1,
              unselectedIcon: AppIconStrings.locationIcon,
              selectedIcon: AppIconStrings.locationSelectedIcon,
            ),
            _bottomNavItem(
              index: 2,
              unselectedIcon: AppIconStrings.appointmentIcon,
              selectedIcon: AppIconStrings.appointmentSelectedIcon,
            ),
            _bottomNavItem(
              index: 3,
              unselectedIcon: AppIconStrings.profileIcon,
              selectedIcon: AppIconStrings.profileSelectedIcon,
            ),
          ],
        ),
      ),
    );
  }

  Widget _bottomNavItem({
    required int index,
    required String selectedIcon,
    required String unselectedIcon,
  }) {
    bool isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration:
            isSelected
                ? BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                )
                : null,
        child: SvgPicture.asset(
          isSelected ? selectedIcon : unselectedIcon,
          height: 24,
          width: 24,
        ),
      ),
    );
  }
}
