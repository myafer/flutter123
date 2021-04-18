// Car 模型
class MineCellModel {
  // 构造函数: {}内是可选值
  const MineCellModel({
    this.imageName,
    this.title,
  });

  final String title;
  final String imageName;
}

final List<MineCellModel> mineCellModels = [
  MineCellModel(
    imageName: "images/mine_huanzhe_ic@2x.png",
    title: "我的患者",
  ),
  MineCellModel(
    imageName: "images/mine_doctors_ic@2x.png",
    title: "同行医生",
  ),
  MineCellModel(
    imageName: "images/mine_integral_ic@2x.png",
    title: "我的积分",
  ),
  MineCellModel(
    imageName: "images/mine_favorites_ic@2x.png",
    title: "我的收藏",
  ),
  MineCellModel(
    imageName: "images/mine_history_ic@2x.png",
    title: "浏览历史",
  ),
  MineCellModel(
    imageName: "images/mine_about_ic@2x.png",
    title: "关于携手",
  ),
  MineCellModel(
    imageName: "images/mine_setting_ic@2x.png",
    title: "设置",
  ),
];
