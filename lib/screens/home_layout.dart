import 'package:blood_donation/constants/app_constants.dart';
import 'package:blood_donation/screens/profile_screen.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int _currentIndex = 0;
  PageController _pageController = PageController();

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<BottomNavyBarItem> bottomNavBarItems = [
      BottomNavyBarItem(
        icon: const Icon(Icons.person),
        title: const Text('Profile'),
        activeColor: AppColors.red,
        inactiveColor: AppColors.pink,
      ),
      BottomNavyBarItem(
        icon: const Icon(Icons.home_outlined),
        title: const Text('Home'),
        activeColor: AppColors.red,
        inactiveColor: AppColors.pink,
      ),
    ];
    return SafeArea(
      child: Scaffold(
        body: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: screens,
          ),
        ),
        bottomNavigationBar: BottomNavyBar(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          showElevation: true,
          selectedIndex: _currentIndex,
          onItemSelected: (index) {
            setState(() {
              _currentIndex = index;
            });
            _pageController.jumpToPage(index);
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: bottomNavBarItems,
        ),
      ),
    );
  }
}

List<Widget> screens = [
  ProfileScreen(),
  HomeScreen(),
];

BottomNavyBarItem _bottomNavyBarItem({
  required BuildContext context,
  String? imgPath,
  String? title,
}) {
  return BottomNavyBarItem(
    icon: Image.asset(imgPath!),
    title: Text(
      title!,
      style: Theme.of(context).textTheme.subtitle1,
    ),
    activeColor: AppColors.red,
    inactiveColor: AppColors.pink,
  );
}
