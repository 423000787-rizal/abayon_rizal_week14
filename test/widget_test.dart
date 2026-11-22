import 'package:flutter_test/flutter_test.dart';
import 'package:abayon_rizal_week14/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const FlowerCatalogApp());
  });
}