import 'package:flutter_test/flutter_test.dart';
import 'package:nekoton_webview_example/app/app.dart';
import 'package:nekoton_webview_example/webview/webview.dart';

void main() {
  group('App', () {
    testWidgets('renders WebviewPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(WebviewPage), findsOneWidget);
    });
  });
}
