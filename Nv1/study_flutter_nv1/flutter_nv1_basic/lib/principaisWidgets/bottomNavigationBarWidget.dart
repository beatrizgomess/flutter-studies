import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({super.key});

  @override
  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
}



class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  PageController _pageController = PageController();
  int indexBottomNavigationBar = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: indexBottomNavigationBar,
          onTap: (int index){
          setState(() {
               indexBottomNavigationBar = index;
          });
          _pageController.animateToPage(
            index, 
            duration: Duration(milliseconds: 300), 
            curve: Curves.ease
            );
          },
          items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "Item 1",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "Item 2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "Item 3",
          ),
        ]);
  }
}