import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Techemari extends StatefulWidget {
  @override
  _TechemariState createState() => _TechemariState();
}

class _TechemariState extends State<Techemari> {
  WebViewController _controller;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text('ተጨማሪ'),
      ),
      body: SafeArea(child: WebView(
        initialUrl: 'https://www.youtube.com/channel/UCxryYHehEFh4DWvZUeYzKVw',
        javascriptMode:JavascriptMode.unrestricted
      )),
    );
  }
}
