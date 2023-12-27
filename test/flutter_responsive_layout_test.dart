import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_responsive_layout/flutter_responsive_layout.dart';

import 'test_widget/test_keys.dart';
import 'test_widget/test_widget.dart';

void main() {
  group("Screen Util Test", () {
    testWidgets("", (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          builder: (context, child) => ResponsiveLayout(
              designSize: const Size(360, 800),
              builder: (context) {
                return child!;
              }),
          home: const TestWidget(),
        ),
      );

      final container1Size = tester.getSize(find.byKey(TestKeys.container1));
      final container2Size = tester.getSize(find.byKey(TestKeys.container2));

      final checkHeightEquality =
          container1Size.height != container2Size.height;
      expect(checkHeightEquality, true);

      final checkWidthEquality = container1Size.width != container2Size.width;
      expect(checkWidthEquality, true);
    });
  });
}
