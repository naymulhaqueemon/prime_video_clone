import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:prime_video/screens/DashBoard/controller/dashboard_controller.dart';
import 'package:prime_video/screens/Download/download_page.dart';
import 'package:prime_video/screens/Home%20Page/home_page.dart';
import 'package:prime_video/screens/Profile%20Page/profile_page.dart';
import 'package:prime_video/screens/Search%20Page/search_page.dart';

class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashBoardController>(builder: (controller) {
      return Scaffold(
        body: Scaffold(
          backgroundColor: kPrimaryColor,
          body: IndexedStack(
            index: controller.tabIndex,
            children: [
              HomePage(
                contentList: [],
              ),
              SearchPage(),
              DownloadPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: black,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: kWatchtimeBarColor,
            unselectedItemColor: grey,
            showUnselectedLabels: true,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_sharp), label: 'Find'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.file_download_outlined), label: 'Download'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: 'Profile'),
            ],
          ),
        ),
      );
    });
  }
}
