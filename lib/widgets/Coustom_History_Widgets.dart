import 'package:flutter/material.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:prime_video/models/content_model.dart';

class CoustomHistoryWidget extends StatelessWidget {
  final List<Content> contentList;
  final IconData? icon;

  const CoustomHistoryWidget({Key? key, required this.contentList, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height! * 0.15,
      child: ListView.builder(
          itemCount: contentList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            final Content content = contentList[index];
            return InkWell(
              onTap: () {},
              child: Container(
                width: ScreenSize.width * 0.45,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                      image: NetworkImage(content.imgeUrl), fit: BoxFit.cover),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: crossStart,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        icon,
                        color: white,
                        size: 40,
                      ),
                    ),
                    SizedBox(
                      height: ScreenSize.height! * 0.01,
                    ),
                    LinearProgressIndicator(
                      value: content.watchtime,
                      valueColor: AlwaysStoppedAnimation(kWatchtimeBarColor),
                      backgroundColor: kWatchtimeBarBackgroundColor,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
