import 'package:flutter/material.dart';
import 'package:flutter123/mine/settingpage/settingpage.dart';

class XSMineCell extends StatefulWidget {
  final String imageName;
  final String title;
  final String arrowImage;

  const XSMineCell({
    Key key,
    @required this.imageName,
    @required this.title,
    this.arrowImage,
  })  : assert(imageName != null, 'imageName  为空'),
        assert(title != null, 'title  为空'),
        super(key: key);

  @override
  _XSMineCellState createState() => _XSMineCellState();
}

class _XSMineCellState extends State<XSMineCell> {
  void onTap() {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) => XSSettingPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: Colors.white,
        height: 62,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Image(
                      image: AssetImage(widget.imageName),
                      width: 30,
                      height: 30),
                  SizedBox(width: 15),
                  Text(widget.title),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Image(
                      image: AssetImage('images/mine_enter@2x.png'),
                      width: 18,
                      height: 18),
                  SizedBox(width: 20)
                ],
              ),
            )
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}
