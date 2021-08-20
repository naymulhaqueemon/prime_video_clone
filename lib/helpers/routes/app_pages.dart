import 'package:get/get.dart';
import 'package:prime_video/screens/DashBoard/dashboard_binding.dart';

import 'package:prime_video/screens/wrapper.dart';

import 'app_routes.dart';


class AppPages {
  static var list = [
    GetPage(name: AppRoutes.DASHBOARD, page: () => Wrapper(),binding: DashboardBinding()),
  ];
}
