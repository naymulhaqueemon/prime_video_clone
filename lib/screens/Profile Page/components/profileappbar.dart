import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prime_video/assests/assests.dart';
import 'package:prime_video/helpers/themes/text_themes.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:prime_video/screens/setting/settings.dart';

AppBar profileappbar(BuildContext context) {
  return AppBar(
    leading: CircleAvatar(
      backgroundImage: NetworkImage(Assets.profile),
    ),
    title: TextButton(
      onPressed: () {
        // showModalBottomSheet(
        //     context: context,
        //     builder: (BuildContext context) {
        //       return Container(
        //           color: kPrimaryColor,
        //           height: ScreenSize.height! * 0.3,
        //           child: ListView(
        //             children: [
        //               CoustomProfile(title: 'Kids', img: Assets.kids),
        //               CoustomProfile(title: 'Mustafa', img: Assets.kids),
        //             ],
        //           ));
        //     });
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Johns Weeks',
            style: textstylebox,
          ),
          IconButton(
             onPressed: () => Get.to(() => Settings()),
              icon: Icon(
                Icons.settings_outlined,
                color: white,
              ))
        ],
      ),
    ),
  );
}
