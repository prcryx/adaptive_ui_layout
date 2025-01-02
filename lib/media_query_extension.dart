import 'package:adaptive_ui_layout/screen_utils.dart';
import 'package:flutter/material.dart';

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQueryData => ScreenUtils().mediaQueryData;
}
