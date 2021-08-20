import 'package:flutter/material.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:prime_video/screens/setting/controller/controller.dart';
class SettingTileWithSwitch extends StatelessWidget {
  final String title;
  final String des;
  final Widget widget;

  final NotificationToggleController sx;
  

  const SettingTileWithSwitch(
      {Key? key,
      required this.title,
      required this.des,
      required this.widget,
      required this.sx})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: crossStart,
              children: [
                Text(
                  title,
                  style: TextStyle(color: white, fontSize: 17),
                ),
                Text(
                  des,
                  style: TextStyle(
                    color: kSettingTextColor,
                  ),
                ),
              ],
            ),
            widget
          ],
        ),
        Divider(thickness: 2, color: kDividerCOlor),
      ],
    );
  }
}
