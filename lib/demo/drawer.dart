import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text(
              'yuan',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('56566677@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1586016917327&di=a092085f2825089d00889f106a8eaa20&imgtype=0&src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F201908%2F25%2F20190825221235_ujcfV.thumb.400_0.jpeg'),
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://resources.ninghao.org/images/candy-shop.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.pink.withOpacity(0.2), BlendMode.hardLight))),
          ),
          ListTile(
            title: Text(
              'message',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () => Navigator.pop(context), // 关闭抽屉
          ),
          ListTile(
            title: Text(
              'favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () => Navigator.pop(context), // 关闭抽屉
          ),
          ListTile(
            title: Text(
              'settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22,
            ),
            onTap: () => Navigator.pop(context), // 关闭抽屉
          )
        ],
      ),
    );
  }
}
