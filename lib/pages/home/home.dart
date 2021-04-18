import 'package:flutter/material.dart';
import 'package:flutter123/theme/theme.dart';

class XSHome extends StatelessWidget {
  Widget build(BuildContext context) {
    final _textStyle =
        TextStyle(fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: XSAppBar("首页"),
      body: Center(
        child: Text(
          "圈子",
          style: _textStyle,
        ),
      ),
    );
  }
}
