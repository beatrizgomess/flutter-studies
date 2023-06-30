import 'package:flutter/material.dart';

import '../trabalhandoComRotas/one_page.dart';
import 'bottomNavigationBarWidget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text("Ola"),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Bea"),
                  accountEmail: Text("bea@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    child: Text("B"),
                  ),
                ),
                ListTile(
                  title: Text("Item 1"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    _pageController.jumpToPage(0);
                    setState(() {
                      indexBottomNavigationBar = 0;
                    });
                  },
                ),
                ListTile(
                  title: Text("Item 2"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    _pageController.jumpToPage(1);
                    setState(() {
                      indexBottomNavigationBar = 1;
                    });
                  },
                ),
                ListTile(
                  title: Text("Item 3"),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    _pageController.jumpToPage(2);
                    setState(() {
                      indexBottomNavigationBar = 2;
                    });
                  },
                )
              ],
            ),
          ),
          body: PageView(
            controller: _pageController,
            children: [
              OnePage(),
              Container(color: Colors.red),
              Container(color: Colors.yellow)
            ],
          ),
          bottomNavigationBar: BottomNavigationBarWidget()),
    );
  }
}
