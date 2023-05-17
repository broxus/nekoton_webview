import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:nekoton_webview/nekoton_webview.dart';
import 'package:nekoton_webview_example/l10n/l10n.dart';

const address =
    '0:727a540fb41fba5767e8fb5aaf0c9b9b0c9aa4ff8d534c45e5ba68742dacc134';
const publicKey =
    '9599d7a809bd0787b2dd995df6408bb0c25ea4c1cb9a26d83d68639797abb5e3';

class WebviewPage extends StatelessWidget {
  const WebviewPage({super.key});

  dynamic _getProviderState() => {
        'version': '0.3.0',
        'numericVersion': 3000,
        'networkId': 1,
        'selectedConnection': 'mainnet',
        'supportedPermissions': ['basic', 'accountInteraction'],
        'subscriptions': <String, Object>{},
        'permissions': <String, Object>{},
      };

  dynamic _requestPermissions() => {
        'basic': true,
        'accountInteraction': {
          'address': address,
          'publicKey': publicKey,
          'contractType': 'EverWallet',
        },
      };

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: SafeArea(
        child: InAppWebView(
          onWebViewCreated: (InAppWebViewController controller) async {
            await controller.initNekotonProvider(
              handler: ({required String method, dynamic params}) {
                switch (method) {
                  case 'getProviderState':
                    return _getProviderState();
                  case 'requestPermissions':
                    return _requestPermissions();
                  default:
                    throw UnimplementedError();
                }
              },
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
