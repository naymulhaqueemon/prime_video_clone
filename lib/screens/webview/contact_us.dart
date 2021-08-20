import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ContactUs extends StatelessWidget {
  WebViewController? controller;
  ContactUs({Key? key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
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
