import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  final String title;
  Page({this.title = '系统通知'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), elevation: 0),
      body: ListDemo(),
    );
  }
}

class ListDemo extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                '系统提醒',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                '02/21 20:33',
                style: TextStyle(
                    fontSize: 14, color: Colors.blueGrey, height: 1.8),
              ),
            ],
          ),
          Text(
            '您已成功加入xxx项目',
            style: TextStyle(fontSize: 14, color: Colors.blueGrey, height: 1.8),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 12, itemBuilder: _listItemBuilder);
  }
}
