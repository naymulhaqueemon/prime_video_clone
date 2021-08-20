
import 'package:flutter/material.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/plugins/carrosul/carousel_slider.dart';

class CoustomCarouselSlider extends StatelessWidget {
  final List list;

  const CoustomCarouselSlider({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        items: list.map((imgpath) {
          return Builder(builder: (BuildContext context) {
            return InkWell(
              onTap: (){},
              child: Container(
                width: ScreenSize.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imgpath), fit: BoxFit.fill)),
              ),
            );
          });
        }).toList(),
        options: CarouselOptions(
          autoPlay: true,
          enableInfiniteScroll: false,
          initialPage: 0,
          pauseAutoPlayOnTouch: true,
          scrollDirection: Axis.horizontal,
          viewportFraction: 1.0,
          enlargeCenterPage: false,
        ));
  }
}