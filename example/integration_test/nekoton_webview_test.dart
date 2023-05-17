import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:nekoton_webview/nekoton_webview.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
    AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  const html = '<html><body><p>Hello world</p></body></html>';

  group('NekotonWebview', () {
    testWidgets('inject provider', (tester) async {
      final controllerCompleter = Completer<InAppWebViewController>();

      await tester.pumpWidget(
        InAppWebView(
          onWebViewCreated: (controller) async {
            await controller.initNekotonProvider(
              handler: ({required String method, dynamic params}) {},
            );

            await controller.loadData(data: html);
          },
          onLoadStop: (controller, url) {
            controllerCompleter.complete(controller);
          },
        ),
      );

      final controller = await controllerCompleter.future;

      expect(
        await controller.evaluateJavascript(source: 'window.__ever'),
        isNotNull,
      );
    });

    testWidgets('call provider method', (tester) async {
      final controllerCompleter = Completer<InAppWebViewController>();
      final methodCompleter = Completer<String>();
      const methodName = 'test';

      await tester.pumpWidget(
        InAppWebView(
          onWebViewCreated: (controller) async {
            await controller.initNekotonProvider(
              handler: ({required String method, dynamic params}) {
                methodCompleter.complete(method);
              },
            );

            await controller.loadData(data: html);
          },
          onLoadStop: (controller, url) {
            controllerCompleter.complete(controller);
          },
        ),
      );

      final controller = await controllerCompleter.future;

      await controller.evaluateJavascript(
        source: '''window.__ever.request({method: '$methodName'})''',
      );

      expect(await methodCompleter.future, equals(methodName));
    });
  });
}
