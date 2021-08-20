import 'package:flutter/material.dart';
import 'package:prime_video/screens/setting/components/body.dart';

import 'components/appbar.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: Body(),
    );
  }
}
