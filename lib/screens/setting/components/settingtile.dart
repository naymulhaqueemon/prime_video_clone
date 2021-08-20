import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prime_video/helpers/themes/themes.dart';
class SettingTile extends StatelessWidget {
  final String title;

  final Widget widget;

  const SettingTile({Key? key, required this.title, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          
          onTap: () {
            Get.to(widget);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(
              title,
              style: TextStyle(color: white, fontSize: 17),
            ),
          ),
        ),
        Divider(thickness: 2, color: kDividerCOlor),
      ],
    );
  }
}
