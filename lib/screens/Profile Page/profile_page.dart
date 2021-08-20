import 'package:flutter/material.dart';
import 'package:prime_video/screens/Profile%20Page/components/body.dart';
import 'components/profileappbar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: profileappbar(context), body: Body());
  }
}
