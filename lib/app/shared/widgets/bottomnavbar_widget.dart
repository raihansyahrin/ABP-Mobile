import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Color(0xff54B9FC),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/home.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/home-active.png",
            height: 24,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/news.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/news-active.png",
            height: 24,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/matches.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/matches-active.png",
            height: 24,
          ),
          label: 'Matches',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/highlights.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/highlights-active.png",
            height: 24,
          ),
          label: 'Highlights',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/icons/profile.png",
            height: 24,
          ),
          activeIcon: Image.asset(
            "assets/icons/profile-active.png",
            height: 24,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
