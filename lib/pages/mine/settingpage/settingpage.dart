import 'package:flutter/material.dart';

class XSSettingPage extends StatelessWidget {
  // 接受入参title,必传参数( 构造函数中@required 声明)
  final String title = "设置";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0.0,
      ),
      body: Center(
        child: Text(title), // 文本居中展示
      ),
    );
  }
}
