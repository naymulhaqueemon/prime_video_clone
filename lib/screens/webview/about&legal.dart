import 'package:flutter/material.dart';
import 'package:prime_video/helpers/themes/themes.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutLegal extends StatelessWidget {
 WebViewController? controller;
  AboutLegal({Key? key}) : super(key: key);

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
        initialUrl: 'https://www.primevideo.com/region/eu/help?nodeId=202095490&view-type=content-only',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          controller = webViewController;
        },
      ),
    );
  }
}
