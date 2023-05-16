import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

///
extension NekotonWebview on InAppWebViewController {
  ///Initialize inpage provider
  ///```dart
  /// InAppWebView(
  ///   onWebViewCreated: (InAppWebViewController controller) async {
  ///     await controller.initNekotonProvider(
  ///       handler: ({required String method, dynamic params}) {
  ///         print({method, params});
  ///       }
  ///     );
  ///   }
  /// )
  ///```
  Future<void> initNekotonProvider({
    required NekotonProviderHandler handler,
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

        return handler(
          method: arg['method'] as String,
          params: arg['params'],
        );
      },
    );
  }
}

///Inpage provider api call handler
typedef NekotonProviderHandler = dynamic Function({
  required String method,
  dynamic params,
});
