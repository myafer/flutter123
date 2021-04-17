import 'package:flutter/material.dart';

class BarText extends StatelessWidget {
  final String _str = "111111";
  @override
  Widget build(BuildContext context) {
    return Text(
      _str,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class XSAppBar extends AppBar {
  final String titlee;

  XSAppBar(this.titlee);

  Widget build(BuildContext context) {
    var text = Text(
      titlee,
      style: TextStyle(
          fontSize: 18, color: Color(0xFF333333), fontWeight: FontWeight.bold),
    );
    return AppBar(
      title: text,
      elevation: 0.0,
    );
  }
}
