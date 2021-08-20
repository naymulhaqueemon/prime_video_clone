import 'package:flutter/material.dart';
import 'package:prime_video/helpers/routes/custom_routes.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/text_themes.dart';
import 'package:prime_video/helpers/themes/themes.dart';

class CoustomBox extends StatelessWidget {
  final String title;
  final Widget? navigationwidget;

  const CoustomBox({Key? key, required this.title, this.navigationwidget})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, SizeRoute(page: navigationwidget));
      },
      child: Container(
        height: ScreenSize.height! * 0.08,
        width: ScreenSize.width * 0.45,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(5)
        // ),
        color: kThirdColor,
        child: Center(
          child: Text(title, style: textstylebox),
        ),
      ),
    );
  }
}
