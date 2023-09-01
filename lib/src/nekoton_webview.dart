import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:logging/logging.dart';
import 'package:nekoton_webview/nekoton_webview.dart';

final _logger = Logger('NekotonWebview');

/// Extension for controller, that allows interact with InPageProvider
extension NekotonWebview on InAppWebViewController {
  ///Initialize inpage provider
  ///```dart
  /// InAppWebView(
  ///   onWebViewCreated: (InAppWebViewController controller) async {
  ///     await controller.initNekotonProvider(
  ///       providerApi: MyProviderApi(),
  ///     );
  ///   }
  /// )
  ///```
  Future<void> initNekotonProvider({
    required ProviderApi providerApi,
  }) async {
    _logger.finest('InitNekotonProvider');
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

        return providerApi.call(method, params as Map<String, dynamic>);
      },
    );
  }

  /// Call js 'networkChanged' method to let web-site know that your transport
  /// had changed.
  Future<void> networkChanged({
    required InAppWebViewController controller,
    required NetworkChangedEvent event,
  }) async {
    try {
      _logger.finest('networkChanged', event);

      final jsonOutput = jsonEncode(event.toJson());

      await controller.evaluateJavascript(
        source: "window.__dartNotifications.networkChanged('$jsonOutput')",
      );
    } catch (err, st) {
      _logger.severe('networkChanged', err, st);
      rethrow;
    }
  }

  /// Call js 'messageStatusUpdated' method to let web-site know that some
  /// transaction was sent.
  Future<void> messageStatusUpdated({
    required InAppWebViewController controller,
    required MessageStatusUpdatedEvent event,
  }) async {
    try {
      _logger.finest('messageStatusUpdated', event);

      final jsonOutput = jsonEncode(event.toJson());

      await controller.evaluateJavascript(
        source:
            "window.__dartNotifications.messageStatusUpdated('$jsonOutput')",
      );
    } catch (err, st) {
      _logger.severe('messageStatusUpdated', err, st);
      rethrow;
    }
  }

  /// Call js 'contractStateChanged' method to let web-site know that state of
  /// some contract had been changed.
  Future<void> contractStateChanged({
    required InAppWebViewController controller,
    required ContractStateChangedEvent event,
  }) async {
    try {
      _logger.finest('contractStateChanged', event);

      final jsonOutput = jsonEncode(event.toJson());

      await controller.evaluateJavascript(
        source:
            "window.__dartNotifications.contractStateChanged('$jsonOutput')",
      );
    } catch (err, st) {
      _logger.severe('contractStateChanged', err, st);
      rethrow;
    }
  }

  /// Call js 'loggedOut' method to let web-site know that user pressed logout
  /// and all seeds were removed.
  Future<void> loggedOut({
    required InAppWebViewController controller,
  }) async {
    try {
      _logger.finest('loggedOut');

      await controller.evaluateJavascript(
        source: 'window.__dartNotifications.loggedOut({})',
      );
    } catch (err, st) {
      _logger.severe('loggedOut', err, st);
      rethrow;
    }
  }

  /// Call js 'permissionsChanged' method to let web-site know that its
  /// permissions had been changed.
  Future<void> permissionsChanged({
    required InAppWebViewController controller,
    required PermissionsChangedEvent event,
  }) async {
    try {
      _logger.finest('permissionsChanged', event);

      final jsonOutput =
          jsonEncode(event.toJson()).replaceAll('tonClient', 'basic');

      await controller.evaluateJavascript(
        source: "window.__dartNotifications.permissionsChanged('$jsonOutput')",
      );
    } catch (err, st) {
      _logger.severe('permissionsChanged', err, st);
      rethrow;
    }
  }

  /// Call js 'transactionsFound' method to let web-site know that some
  /// transaction was found.
  Future<void> transactionsFound({
    required InAppWebViewController controller,
    required TransactionsFoundEvent event,
  }) async {
    try {
      _logger.finest('transactionsFound', event);

      final jsonOutput = jsonEncode(event.toJson());

      await controller.evaluateJavascript(
        source: "window.__dartNotifications.transactionsFound('$jsonOutput')",
      );
    } catch (err, st) {
      _logger.severe('transactionsFound', err, st);
      rethrow;
    }
  }

  /// Call js 'transactionsFound' method to let web-site know that user
  /// opened browser tab.
  Future<void> connected({
    required InAppWebViewController controller,
    required ConnectedEvent event,
  }) async {
    try {
      _logger.finest('connected', event);

      final jsonOutput = jsonEncode(event.toJson());

      await controller.evaluateJavascript(
        source: "window.__dartNotifications.connected('$jsonOutput')",
      );
    } catch (err, st) {
      _logger.severe('connected', err, st);
      rethrow;
    }
  }

  /// Call js 'transactionsFound' method to let web-site know that user
  /// left browser tab.
  Future<void> disconnected({
    required InAppWebViewController controller,
    required DisconnectedEvent event,
  }) async {
    try {
      _logger.finest('disconnected', event);

      final jsonOutput = jsonEncode(event.toJson());

      await controller.evaluateJavascript(
        source: "window.__dartNotifications.disconnected('$jsonOutput')",
      );
    } catch (err, st) {
      _logger.severe('disconnected', err, st);
      rethrow;
    }
  }
}
