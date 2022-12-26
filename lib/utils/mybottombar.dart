import 'package:flutter/material.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({Key? key}) : super(key: key);

  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar> {
  int _currentBottomindex = 0;
  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomindex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentBottomindex,
      onTap: _handleBottomIndexChange,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Image.asset(
              'assets/icons/home.png',
              color: Colors.white,
            ),
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Image.asset(
              'assets/icons/graph.png',
              color: Colors.white,
            ),
          ),
          label: 'Analytics',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Image.asset(
              'assets/icons/qr-code.png',
              color: Colors.white,
            ),
          ),
          label: 'Qr Scan',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Image.asset(
              'assets/icons/notification.png',
              color: Colors.white,
            ),
          ),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24),
            child: Image.asset(
              'assets/icons/profile.png',
              color: Colors.white,
            ),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
