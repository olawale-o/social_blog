import 'package:flutter/material.dart';
import '../colors/colors.dart';

class BottomBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) switchTab;
  const BottomBar({Key? key, required this.selectedIndex, required this.switchTab }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: blueColor,
      currentIndex: selectedIndex,
      onTap: switchTab,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "User"
        )
      ],
    );
  }
}
