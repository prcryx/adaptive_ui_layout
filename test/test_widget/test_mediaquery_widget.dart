import 'package:adaptive_ui_layout/flutter_responsive_layout.dart';
import 'package:flutter/material.dart';

import 'test_keys.dart';

class TestMediaqueryWidget extends StatelessWidget {
  const TestMediaqueryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Container(
                key: TestKeys.container3,
                color: Colors.cyanAccent,
                height: context.mediaQueryData.size.height * 0.1,
              ),
            ),
            20.ws,
            Expanded(
              child: Container(
                key: TestKeys.container4,
                color: Colors.lime,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
