import 'package:flutter/material.dart';

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
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text(Strings.hello),
          ),
          body: new Column(
            children: <Widget>[
              Hello(),
            ],
          ),
        ),
        theme: ThemeData.dark());
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'hello',
        textDirection: TextDirection.ltr,
        style: TextStyle(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }
}

// 静态字段系统
class Strings {
  static String hello = 'hello';
}
