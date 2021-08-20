import 'package:get/get.dart';
import 'package:prime_video/screens/Home%20Page/controller/home_page_controller.dart';
import 'package:prime_video/screens/Profile%20Page/controller/profile_page_controller.dart';
import 'package:prime_video/screens/Search%20Page/search_page_controller.dart';

import 'controller/dashboard_controller.dart';


class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBoardController>(() => DashBoardController());
    Get.lazyPut<ProfilePageController>(() => ProfilePageController());
    Get.lazyPut<SearchPageController>(() => SearchPageController());
    Get.lazyPut<HomePageController>(() => HomePageController());
  }
}
