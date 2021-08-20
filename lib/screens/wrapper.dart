import 'package:flutter/material.dart';

import '../helpers/size_config/size_config.dart';
import 'DashBoard/dashboard.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return DashBoard();
  }
}
