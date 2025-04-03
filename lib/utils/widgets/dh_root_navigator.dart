import 'package:dochome/modules/baby-register/view/baby_register_screen.dart';
import 'package:dochome/modules/booking_screen/booking_screen.dart';
import 'package:dochome/modules/home/view/home_screen.dart';
import 'package:dochome/modules/profile/view/profile_screen.dart';
import 'package:dochome/values/strings/color_string.dart';
import 'package:dochome/values/strings/icon_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DHRootNavigator extends StatefulWidget {
  const DHRootNavigator({super.key});

  @override
  State<DHRootNavigator> createState() => _DHRootNavigatorState();
}

class _DHRootNavigatorState extends State<DHRootNavigator> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    const BabyRegistrationScreen(),
    const BookingScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _selectedIndex, children: _pages),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: const BoxDecoration(
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
              selectedIconData: Icons.child_care,
              unselectedIconData: Icons.child_care,
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

  ///This widget builds the icons for bottom navigation bar.
  ///
  /// If you want to use svg asset then use the parameters [selectedIcon] and
  /// [unselectedIcon]. If you want to insert a flutter icon then use
  /// [selectedIconData] and [unselectedIconData].
  ///
  /// If you want to use svg asset but still specify an inbuilt icon then
  /// that icon will be displayed.
  ///
  /// Note- Use selected and unselected in pairs. Using only one in any pair
  /// will throw errors
  Widget _bottomNavItem({
    required int index,
    String? selectedIcon,
    String? unselectedIcon,
    IconData? selectedIconData,
    IconData? unselectedIconData,
  }) {
    final isSelected = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration:
            isSelected
                ? BoxDecoration(
                  color: Colors.grey.shade200,
                  shape: BoxShape.circle,
                )
                : null,

        child:
            (selectedIconData != null)
                ? Icon(
                  isSelected ? selectedIconData : unselectedIconData,
                  color:
                      isSelected
                          ? AppColorStrings.grey600Color
                          : AppColorStrings.grey400Color,
                  size: 24,
                )
                : SvgPicture.asset(
                  isSelected ? selectedIcon! : unselectedIcon!,
                  height: 24,
                  width: 24,
                ),
      ),
    );
  }
}
