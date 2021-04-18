import 'package:flutter/material.dart';
import 'package:flutter123/mine/model/mine.dart';
import 'package:flutter123/mine/xsminecell.dart';
import 'package:flutter123/mine/xsmineheadcell.dart';
import 'package:flutter123/mine/xsminesubheadcell.dart';

class XSMine extends StatelessWidget {
  Widget _cellForRow(BuildContext context, int index) {
    if (index == 0) {
      return XSMineHeadCell();
    } else if (index == 1) {
      return XSMineSubHeadCell();
    } else {
      MineCellModel _model = mineCellModels[index - 2];
      return XSMineCell(
        imageName: _model.imageName,
        title: _model.title,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemBuilder: _cellForRow,
        itemCount: mineCellModels.length + 1,
      ),
    );
  }
}
