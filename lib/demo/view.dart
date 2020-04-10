import 'package:flutter/material.dart';

class ViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: <Widget>[
        Container(
          color: Colors.brown,
          alignment: Alignment(0, 0),
          child: Text(
            'page 1',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: Colors.blueGrey,
          alignment: Alignment(0, 0),
          child: Text(
            'page 2',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          color: Colors.red,
          alignment: Alignment(0, 0),
          child: Text(
            'page 3',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
