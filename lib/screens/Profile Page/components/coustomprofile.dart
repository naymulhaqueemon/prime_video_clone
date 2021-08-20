import 'package:flutter/material.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';

class CoustomProfile extends StatelessWidget {
  final String title;
  final String img;

  const CoustomProfile({Key? key, required this.title, required this.img})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(img),
              radius: 15,
            ),
            SizedBox(
              width: ScreenSize.width * 0.05,
            ),
            Text(
              title,
              style: TextStyle(
                  color: white, fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
