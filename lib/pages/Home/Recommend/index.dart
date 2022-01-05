import 'package:flutter/material.dart';
import '../../../requests/recommend.dart';

class Recommend extends StatefulWidget {
  const Recommend({Key? key}) : super(key: key);

  @override
  _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<Recommend> {
  late List<Map<String, Object>> banners;

  @override
  void initState() {
    super.initState();
    // 获取banner图数据
    httpGetBanner();
  }

  /*
  * 获取banner图数据
  */
  void getBanners() async {
    var res = await httpGetBanner();
    debugPrint(res.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('推荐'),
    );
  }
}
