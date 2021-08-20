import 'package:flutter/material.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';

class CoustomDivider extends StatelessWidget {
  const CoustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: kThirdColor,
      thickness: 2,
      height: ScreenSize.height! * 0.05,
    );
  }
}
