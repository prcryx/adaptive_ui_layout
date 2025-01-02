import 'package:adaptive_ui_layout/screen_utils.dart';
import 'package:flutter/material.dart';

extension WidgetExtension on num {
  /// SizedBox with adaptive height
  ///
  SizedBox get hs => SizedBox(height: this * ScreenUtils().sh);

  /// SizedBox with adaptive width
  ///
  SizedBox get ws => SizedBox(width: this * ScreenUtils().sw);
}
