import 'package:flutter/material.dart';

class BottomBarDemo extends StatefulWidget {
  @override
  _BottomBarDemoState createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed, // 超过4个bar，默认的type会改变，需要设一下
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.import_contacts), title: Text('contacts')),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('explore'),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), title: Text('menu')),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text('my')),
        ]);
  }
}
