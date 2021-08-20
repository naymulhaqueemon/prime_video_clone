import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prime_video/screens/setting/components/setting_tile_with_switch.dart';
import 'package:prime_video/screens/setting/components/settingtile.dart';
import 'package:prime_video/screens/setting/controller/autoplay_controller.dart';
import 'package:prime_video/screens/setting/controller/controller.dart';
import 'package:prime_video/screens/webview/about&legal.dart';
import 'package:prime_video/screens/webview/contact_us.dart';
import 'package:prime_video/screens/webview/help.dart';

class Body extends StatelessWidget {
  final NotificationToggleController sx =
      Get.put(NotificationToggleController());
  final AutoPlayController se = Get.put(AutoPlayController());

  Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        SettingTileWithSwitch(
          sx: sx,
          title: 'Auto Play',
          des: 'Autometic play next video',
          widget: Obx(
            () =>
                Switch(onChanged: (val) => se.plautoggle(), value: se.on.value),
          ),
        ),
        SettingTileWithSwitch(
          title: 'Notfication',
          des: 'Allow Notification',
          widget: Obx(
            () => Switch(onChanged: (val) => sx.toggle(), value: sx.on.value),
          ),
          sx: sx,
        ),
        SettingTile(
          title: 'Contact us',
          widget: ContactUs(),
        ),
        SettingTile(
          title: 'About & Ligal',
          widget: AboutLegal(),
        ),
        SettingTile(
          title: 'Help',
          widget: Help(),
        ),
      ],
    );
  }
}
