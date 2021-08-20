import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

const Color white = Colors.white;
const Color black = Colors.black;
const Color grey = Colors.grey;

Color kPrimaryColor = Color(0xff0F171E);
Color kSecondaryColor = Colors.red;
Color kThirdColor = Colors.grey.shade800;
Color kFourthColor = Color(0xff333333);
Color kFifthColor = Color(0xff3C904D);
Color kWatchtimeBarColor = Color(0xff009FD5);
Color kWatchtimeBarBackgroundColor = Color(0xff495159);
Color kSecondarytextColor = Color(0xff697B87);
Color kDownloadButtonColor = Color(0xffA5AAAF);
Color kDownloadCardColor = Color(0xff1B252F);
Color kDownloadBottomSheetColor = Color(0xff262E39);
Color kDividerCOlor = Color(0xff5F6F7A);
Color kSettingTextColor = Color(0xff596E7D);

SystemUiOverlayStyle uiConfig = SystemUiOverlayStyle(
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.white,
  statusBarIconBrightness: Brightness.dark,
  statusBarColor: kPrimaryColor,
);

ThemeData theme = ThemeData(
  appBarTheme: appBarTheme,
  backgroundColor: kPrimaryColor,
  fontFamily: GoogleFonts.poppins().fontFamily,
  iconTheme: iconThemeData,
  inputDecorationTheme: inputDecorationTheme,
  scaffoldBackgroundColor: kPrimaryColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

AppBarTheme appBarTheme = AppBarTheme(
  backgroundColor: kPrimaryColor,
  elevation: 0.0,
  textTheme: const TextTheme(
    headline6: const TextStyle(
      fontSize: 20,
    ),
  ),
);

IconThemeData iconThemeData = IconThemeData(color: kPrimaryColor);

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  floatingLabelBehavior: FloatingLabelBehavior.always,
  contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
  enabledBorder: outlineInputBorder,
  focusedBorder: outlineInputBorder,
  border: outlineInputBorder,
);

OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(28),
  gapPadding: 10,
);

const BoxDecoration tabDecoration = BoxDecoration(
  borderRadius: const BorderRadius.all(Radius.circular(30)),
);

TextStyle tsSize(double x) => TextStyle(fontSize: x);

TextStyle tsBoldSize(double x) =>
    TextStyle(fontSize: x, fontWeight: FontWeight.bold);

TextStyle tsColorBoldSize(double x) =>
    TextStyle(fontSize: x, fontWeight: FontWeight.bold, color: kPrimaryColor);
