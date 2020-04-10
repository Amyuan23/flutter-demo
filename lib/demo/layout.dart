import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround, // 主轴
      crossAxisAlignment: CrossAxisAlignment.end, // 交叉轴
      children: <Widget>[
        IconBadge(Icons.access_alarm),
        IconBadge(Icons.access_alarm),
        IconBadge(Icons.access_alarm)
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 60});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      padding: EdgeInsets.all(10),
      color: Colors.blue,
    );
  }
}
