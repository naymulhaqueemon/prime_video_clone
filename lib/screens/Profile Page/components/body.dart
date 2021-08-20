import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:prime_video/assests/assests.dart';
import 'package:prime_video/helpers/size_config/size_config.dart';
import 'package:prime_video/helpers/themes/themes.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Watchlist',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: white),
        ),
        Divider(
          color: kDividerCOlor,
          thickness: 2,
        ),
SizedBox(
  height: ScreenSize.height!*0.15
),
        Container(
          height: ScreenSize.height! * 0.25,
          width: ScreenSize.width * 0.6,
          child: SvgPicture.network(Assets.wachlist,fit: BoxFit.fill),
        ),
        Text('Browse Now, watch later',style: TextStyle(
          color: white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),),
        SizedBox(),
        Text('Your watchlist is shared all over your device',style: TextStyle(
          color: white,
        ),),
        
      ],
    );
  }
}
