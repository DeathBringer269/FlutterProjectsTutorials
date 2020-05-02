import 'package:flutter_test/flutter_test.dart';
import '../lib/main.dart';

void main() {
  testWidgets('App has a grid', (tester) async {
    await tester.pumpWidget(new MyApp());
    expect(find.text('About'), findsOneWidget);
  });
}