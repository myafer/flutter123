import 'package:flutter/material.dart';
import 'package:flutter123/theme/common.dart';

class XSMineHeadCell extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 20),
              Image(
                image: AssetImage("images/mine_huanzhe_ic@2x.png"),
                width: 52,
                height: 52,
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  Text("1葛凤琴",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: color222)),
                  SizedBox(height: 6),
                  Text(
                    "影响力999",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.normal,
                        color: Color(0xFF0041c4)),
                  ),
                ],
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3.0),
                  color: colorTheme,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "我的收入",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Image(
                        image: AssetImage("images/mine_ income_ic@2x.png"),
                        width: 10,
                        height: 10)
                  ],
                ),
              ),
              SizedBox(width: 20)
            ],
          )
        ],
      ),
    );
  }
}
