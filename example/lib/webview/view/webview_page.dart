import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:nekoton_webview/nekoton_webview.dart';
import 'package:nekoton_webview_example/l10n/l10n.dart';
import 'package:nekoton_webview_example/webview/view/mock_provider_api.dart';

class WebviewPage extends StatelessWidget {
  const WebviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: SafeArea(
        child: InAppWebView(
          onWebViewCreated: (InAppWebViewController controller) async {
            await controller.initNekotonProvider(
              providerApi: MockProviderApi(),
            );

            await controller.loadUrl(
              urlRequest: URLRequest(
                url: Uri.parse('https://app.flatqube.io/swap'),
              ),
            );
          },
        ),
      ),
    );
  }
}
