import 'package:flutter/material.dart';
import 'package:flutter123/theme/common.dart';

class XSMineSubHeadCell extends StatefulWidget {
  @override
  _XSMineSubHeadCellState createState() => _XSMineSubHeadCellState();
}

class _XSMineSubHeadCellState extends State<XSMineSubHeadCell> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
//                交叉轴的布局方式，对于column来说就是水平方向的布局方式
        crossAxisAlignment: CrossAxisAlignment.center,
        //就是字child的垂直布局方向，向上还是向下
        verticalDirection: VerticalDirection.down,
        children: [
          SizedBox(width: 20),
          XSmineSubHeadActions(
              titleStr: "发布的文章", imageName: "images/mine_daiban_ic@2x.png"),
          XSmineSubHeadActions(
              titleStr: "观看的文章", imageName: "images/mine_kecheng_ic@2x.png"),
          XSmineSubHeadActions(
              titleStr: "继续教育", imageName: "images/mine_jiaoyu_ic@2x.png"),
          XSmineSubHeadActions(
              titleStr: "私人定制",
              imageName: "images/nime_sirendingzhi_ic@2x.png"),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

class XSmineSubHeadActions extends StatefulWidget {
  final String titleStr;
  final String imageName;
  final Function tap;
  const XSmineSubHeadActions({Key key, this.titleStr, this.imageName, this.tap})
      : super(key: key);

  @override
  _XSmineSubHeadActionsState createState() => _XSmineSubHeadActionsState();
}

class _XSmineSubHeadActionsState extends State<XSmineSubHeadActions> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: color222,
        child: Column(
          children: [
            SizedBox(height: 14),
            Image(
              image: AssetImage(widget.imageName),
              width: 30,
              height: 30,
            ),
            SizedBox(height: 8),
            Text(
              widget.titleStr,
              style: TextStyle(fontSize: 12, color: colorTheme),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
      onTap: widget.tap,
    );
  }
}
