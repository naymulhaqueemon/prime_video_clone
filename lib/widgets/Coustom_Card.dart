import 'package:flutter/material.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:prime_video/models/content_model.dart';

class CoustomCard extends StatelessWidget {
  final String title;

  final List<Content> contentList;

  const CoustomCard({Key? key, required this.title, required this.contentList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: white, fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: white,
                )
              ],
            )),
        Container(
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
                          image: NetworkImage(content.imgeUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
