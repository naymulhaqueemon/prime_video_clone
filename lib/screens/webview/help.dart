import 'package:flutter/material.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Help extends StatelessWidget {
  WebViewController? controller;
  Help({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Help'),
      ),
      body: WebView(
        gestureNavigationEnabled: true,
        initialUrl: 'https://www.primevideo.com/region/eu/help',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          controller = webViewController;
        },
      ),
    );
  }
}
