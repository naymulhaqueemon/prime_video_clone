import 'package:flutter/material.dart';
import 'package:prime_video/data/data.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:prime_video/widgets/Coustom_Card.dart';
import 'package:prime_video/widgets/Coustom_Carousel_Slider._Widget.dart';
import 'package:prime_video/widgets/Coustom_History_Widgets.dart';

class TabHomeScreen extends StatelessWidget {
  const TabHomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height,
      width: ScreenSize.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            CoustomCarouselSlider(
              list: imgurl,
            ),
            Column(
              crossAxisAlignment: crossStart,
              children: [
                SizedBox(
                  width: ScreenSize.width * 0.02,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Countinue Watching',
                      style: TextStyle(
                          color: white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    )),
                CoustomHistoryWidget(
                  contentList: history,
                  icon: Icons.play_circle_outlined,
                ),
              ],
            ),
            CoustomCard(
              contentList: catagory,
              title: 'Action and Advanture Movies',
            ),
            
          ],
        ),
      ),
    );
  }
}