import 'package:flutter/material.dart';
import 'package:flutter123/Mine/Mine.dart';
import 'package:flutter123/circle/circle.dart';
import 'package:flutter123/home/home.dart';

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  // ignore: missing_return
  Widget onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // 每个栏目的主页面
  List<Widget> bodys = [XSHome(), XSCircle(), XSMine()];
  // 每个栏目的底部Item
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
      icon: Image(image: AssetImage('images/home0.png'), width: 28),
      activeIcon: Image(image: AssetImage('images/home1.png'), width: 28),
      label: "首页",
    ),
    BottomNavigationBarItem(
      icon: Image(image: AssetImage('images/circle0.png'), width: 28),
      activeIcon: Image(image: AssetImage('images/circle1.png'), width: 28),
      label: "圈子",
    ),
    BottomNavigationBarItem(
      icon: Image(image: AssetImage('images/mine0.png'), width: 28),
      activeIcon: Image(image: AssetImage('images/mine1.png'), width: 28),
      label: "我的",
    ),
  ];

  // 当前选中Index
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: bodys[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // 固定大小，避免白色背景
        currentIndex: _currentIndex, // 选择的默认值
        items: items,
        onTap: onTap, // 点击回调
        unselectedItemColor: Color(0xFF333333),
        selectedItemColor: Color(0xFF0041C4),
        unselectedFontSize: 12,
        selectedFontSize: 12, // 选择字体大小设置为12（因为默认大小是12，这样可以去掉变大动画）
        // selectedLabelStyle: ,
      ),
    );
  }
}
