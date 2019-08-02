import 'dart:async';

import 'package:flutter/material.dart';
import 'package:getlinks_ui_kit/res/colors.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GLWebView extends StatefulWidget {
  GLWebView(this.url);

  final String url;

  @override
  _GLWebViewState createState() => _GLWebViewState();
}

class _GLWebViewState extends State<GLWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: Colors.white,
        accentColor: GetLinksColors.primary,
      ),
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            NavigationControls(_controller.future),
          ],
        ),
        body: Column(
          children: <Widget>[
            if (loading)
              Container(
                height: 2,
                child: LinearProgressIndicator(),
              ),
            Expanded(
              child: WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: widget.url,
                // javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController webViewController) {
                  _controller.complete(webViewController);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum MenuOptions {
  evaluateJavascript,
  toast,
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this._webViewControllerFuture)
      : assert(_webViewControllerFuture != null);

  final Future<WebViewController> _webViewControllerFuture;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WebViewController>(
      future: _webViewControllerFuture,
      builder:
          (BuildContext context, AsyncSnapshot<WebViewController> snapshot) {
        final bool webViewReady = snapshot.hasData;
        final WebViewController controller = snapshot.data;
        return Row(
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: !webViewReady
                  ? null
                  : () async {
                      if (await controller.canGoBack()) {
                        controller.goBack();
                      }
                    },
            ),
            IconButton(
              icon: const Icon(Icons.replay),
              onPressed: !webViewReady
                  ? null
                  : () {
                      controller.reload();
                    },
            ),
          ],
        );
      },
    );
  }
}
