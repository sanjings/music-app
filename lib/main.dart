import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '云音乐',
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: const Text('云音乐'))),
    );
  }
}
