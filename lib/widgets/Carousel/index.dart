import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Carousel extends StatefulWidget {
  final List<Map<String, Object>> imageList;
  const Carousel({Key? key, required this.imageList}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState(imageList);
}

class _CarouselState extends State<Carousel> {
  List<Map<String, Object>> imageList;
  
  _CarouselState(this.imageList);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
