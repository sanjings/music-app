import 'package:flutter/material.dart';

class Rank extends StatefulWidget {
  const Rank({ Key? key }) : super(key: key);

  @override
  _RankState createState() => _RankState();
}

class _RankState extends State<Rank> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('排行榜'),
    );
  }
}