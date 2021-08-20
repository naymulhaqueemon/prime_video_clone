import 'package:flutter/material.dart';
import 'package:prime_video/helpers/routes/custom_routes.dart';
import 'package:prime_video/helpers/themes/themes.dart';

class CoustomCatagoryButton extends StatelessWidget {
  final String title;
  final Widget widget;

  const CoustomCatagoryButton(
      {Key? key, required this.title, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, SlideLeftRoute(page: widget));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: grey,
              fontSize: 20.0,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: grey,
          )
        ],
      ),
    );
  }
}
