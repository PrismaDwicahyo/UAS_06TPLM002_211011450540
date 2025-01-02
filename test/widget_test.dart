// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:uts/main.dart';

void main() {
  testWidgets('Uji aplikasi WeatherApp', (WidgetTester tester) async {
    // Membangun aplikasi kita dan memicu satu frame.
    await tester.pumpWidget(const WeatherApp());

    // Verifikasi bahwa teks awal ditampilkan.
    expect(find.text('Harlem'), findsOneWidget);
    expect(find.text('15°c'), findsOneWidget);
    expect(find.text('Cloudy'), findsOneWidget);
    expect(find.text('25°C / 28°C'), findsOneWidget);
  });
}

