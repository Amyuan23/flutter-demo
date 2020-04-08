import 'package:flutter/material.dart';
import './demo/list.dart';
import './demo/drawer.dart';
import './demo/bottom_bar.dart';

// 入口文件
// void 不返回值
void main() => runApp(new MyApp()); // runApp挂载根

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 用Material设计模式去包裹
    return new MaterialApp(
        title: 'Welcome to Flutter',
        // Scaffold部分有页面顶部底部工具栏
        home: Home(),
        theme: ThemeData.light());
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: new Scaffold(
          backgroundColor: Colors.grey[100],
          appBar: new AppBar(
            // leading: IconButton(
            //     icon: Icon(Icons.menu),
            //     tooltip: 'Navigration',
            //     onPressed: () => debugPrint('menu')),
            title: new Text(Strings.hello),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search),
                  tooltip: 'Navigration',
                  onPressed: () => debugPrint('search'))
            ],
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.send)),
              Tab(icon: Icon(Icons.radio)),
              Tab(icon: Icon(Icons.record_voice_over))
            ]),
          ),
          body: TabBarView(children: <Widget>[
            ListDemo(),
            Icon(Icons.radio, size: 128, color: Colors.black12),
            Icon(Icons.record_voice_over, size: 128, color: Colors.black12),
          ]),
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomBarDemo(),
        ));
  }
}

// 静态字段系统
class Strings {
  static String hello = 'HELLO';
}
