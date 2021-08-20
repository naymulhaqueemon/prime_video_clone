import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'helpers/routes/app_pages.dart';
import 'helpers/themes/themes.dart';

Future<void> main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemChrome.setSystemUIOverlayStyle(uiConfig);
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.list,
      theme: theme,
    ),
  );
}
