import 'package:flutter/material.dart';
import 'package:prime_video/helpers/routes/custom_routes.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/text_themes.dart';
import 'package:prime_video/helpers/themes/themes.dart';

class CoustomTextButton extends StatelessWidget {
  final String title1;
  final String title2;
  final Widget? widget;

  const CoustomTextButton(
      {Key? key, required this.title1, required this.title2, this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: kSecondaryColor,
      hoverColor: kSecondaryColor,
      onTap: () {
        Navigator.push(context, SizeRoute(page: widget));
      },
      child: Row(
        children: [
          Text(title1, style: textstylebutton),
          SizedBox(width: ScreenSize.width * 0.01),
          Text(
            title2,
            style: TextStyle(
                fontWeight: FontWeight.bold, color: white, fontSize: 15),
          ),
          SizedBox(width: ScreenSize.width * 0.04),
          Icon(
            Icons.arrow_forward_ios_outlined,
            color: white,
            size: 15,
          )
        ],
      ),
    );
  }
}
