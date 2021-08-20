import 'package:flutter/material.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/text_themes.dart';
import 'package:prime_video/helpers/themes/themes.dart';

class CoustomDownloadPageIconTextButton extends StatelessWidget {
  final IconData? icon;
  final String? text;

  const CoustomDownloadPageIconTextButton({Key? key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(
              icon,
              color: white,
            ),
            SizedBox(
              width: ScreenSize.width * 0.1,
            ),
            Text(text!, style: textModalBottomDownloadButton)
          ],
        ));
  }
}
