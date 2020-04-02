import 'package:flutter/material.dart';
import './model/post.dart';

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
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(
            height: 16,
          ),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subhead,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: new AppBar(
        title: new Text(Strings.hello),
      ),
      body: ListView.builder(
          itemCount: posts.length, itemBuilder: _listItemBuilder),
    );
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
