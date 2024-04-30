import 'package:flutter_test/flutter_test.dart';
import 'package:clock_widget/clock_widget.dart';

void main() {
  testWidgets('ClockWidget test', (WidgetTester tester) async {
    await tester.pumpWidget(const ClockWidget());
  });
}
