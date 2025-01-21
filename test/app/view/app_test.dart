import 'package:flutter_test/flutter_test.dart';
import 'package:sparkify/app/app.dart';
import 'package:sparkify/features/authentication/view/pages/login_page.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(LoginPage), findsOneWidget);
    });
  });
}
