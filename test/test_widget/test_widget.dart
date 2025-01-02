import 'package:flutter/material.dart';
import 'package:adaptive_ui_layout/flutter_responsive_layout.dart';

import 'test_keys.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            key: TestKeys.container1,
            color: Colors.blue,
            height: 115,
            width: 115,
          ),
          20.hs,
          Container(
            key: TestKeys.container2,
            color: Colors.orange,
            height: 115.h,
            width: 115.w,
          ),
        ],
      ),
    );
  }
}
