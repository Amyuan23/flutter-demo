import 'package:flutter/material.dart';

// 入口文件
// void 不返回值
void main() => runApp(new MyApp()); // runApp挂载根

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(Strings.hello),
        ),
        body: new Column(
          children: <Widget>[
            // Fade(),
            Center(
              child: Text(
                'kkki kk',
                textDirection: TextDirection.ltr,
                style: TextStyle(),
              ),
            ),
            Container(
              height: 0.5,
              color: Color(0xFFEFF1F6),
            ),
          ],
        ),
      ),
    );
  }
}

class Fade extends StatefulWidget {
  Fade({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _FadeState createState() => _FadeState();
}

class _FadeState extends State<Fade> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    curve = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
              child: FadeTransition(
                  opacity: curve,
                  child: FlutterLogo(
                    size: 100.0,
                  )))),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Fade',
        child: Icon(Icons.brush),
        onPressed: () {
          _controller.forward();
        },
      ),
    );
  }
}

// class Card extends StatelessWidget {
//   Card({@required this.index,@required this.onPress});
//   final index;
//   final Function onPress;

//   @override
//   Widget build(BuildContext context) {
//     return CardNew(
//       child: Column(
//         children: <Widget>[
//         Text('card $index'),
//         FlatButton(onPressed: this.onPress, child: const Text('press'))
//       ],
//       )
//     );
//   }
// }

// Card(index:1,onPress(){
//   print('kkkk');
// })

// 静态字段系统
class Strings {
  static String hello = 'hello';
}
