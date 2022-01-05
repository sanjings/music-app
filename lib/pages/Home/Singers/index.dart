import 'package:flutter/material.dart';

class Singers extends StatefulWidget {
  const Singers({ Key? key }) : super(key: key);

  @override
  _SingersState createState() => _SingersState();
}

class _SingersState extends State<Singers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('歌手'),
    );
  }
}