import 'package:flutter/material.dart';
import 'package:flutter123/root/root.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: RootPage(),
        ),
        theme: ThemeData(
          primaryColor: Colors.white,
          highlightColor: Color.fromRGBO(0, 0, 0, 0), // 去除高亮色
          splashColor: Color.fromRGBO(0, 0, 0, 0), // 去除水波纹
        ));
  }
}
