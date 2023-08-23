import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:nekoton_webview/src/models/models.dart';

///
extension NekotonWebview on InAppWebViewController {
  ///Initialize inpage provider
  ///```dart
  /// InAppWebView(
  ///   onWebViewCreated: (InAppWebViewController controller) async {
  ///     await controller.initNekotonProvider(
  ///        providerApi: MyProviderApi(),
  ///     );
  ///   }
  /// )
  ///```
  Future<void> initNekotonProvider({
    required ProviderApi providerApi,
  }) async {
    await addUserScript(
      userScript: UserScript(
        source: await rootBundle
            .loadString('packages/nekoton_webview/assets/main.js'),
        injectionTime: UserScriptInjectionTime.AT_DOCUMENT_START,
      ),
    );

    addJavaScriptHandler(
      handlerName: 'nekotonWebviewHandler',
      callback: (List<dynamic> arguments) {
        final arg = arguments.elementAt(0) as Map<String, dynamic>;
        final method = arg['method'] as String;
        final params = arg['params'];

        return providerApi.call(method, params);
      },
    );
  }
}
