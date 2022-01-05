import 'package:flutter/material.dart';
import './Recommend/index.dart';
import './Singers/index.dart';
import './Rank/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text(
            '云音乐',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xffd44439),
          bottom: const TabBar(
            padding: EdgeInsets.only(bottom: 10),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: EdgeInsets.all(5),
            labelColor: Colors.white,
            labelStyle: TextStyle(fontSize: 16),
            unselectedLabelColor: Color(0xffe4e4e4),
            tabs: <Widget>[Text('推荐'), Text('歌手'), Text('排行榜')],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[Recommend(), Singers(), Rank()],
        ),
      ),
    );
  }
}
