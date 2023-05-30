import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nekoton_webview_example/webview/webview.dart';

import '../helpers/helpers.dart';

void main() {
  group('WebviewPage', () {
    testWidgets('renders InAppWebView', (tester) async {
      await tester.pumpApp(const WebviewPage());
      expect(find.byType(InAppWebView), findsOneWidget);
    });
  });
}
