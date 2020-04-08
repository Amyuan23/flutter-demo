import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            // => div
            // color: Colors.green, // =>bg-color
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(8),
            width: 100, // con
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: Colors.green, // 如果要给设置radius,color有的话必须写里面
            ),
            child: Text(
              'data',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, color: Colors.blue),
            ),
            // child: Icon(icon),
          )
        ],
      ),
    );
  }
}
