import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Webview',
      home: Screen(),
    );
  }
}

class Screen extends StatelessWidget {
  Screen({super.key});

  WebViewController controller = WebViewController()
    ..loadRequest(Uri.parse('https://google.com'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Webview'),
            SizedBox(
              height: 300.0,
              child: WebViewWidget(
                controller: controller,
              ),
            )
          ],
        ),
      ),
    );
  }
}
