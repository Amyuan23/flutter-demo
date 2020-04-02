import 'package:flutter/material.dart';
import './demo/list.dart';

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
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: new AppBar(
        title: new Text(Strings.hello),
      ),
      body: ListDemo(),
    );
  }
}

// 静态字段系统
class Strings {
  static String hello = 'hello';
}
