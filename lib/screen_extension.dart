import 'package:adaptive_ui_layout/screen_utils.dart';

/// Adapted to the device width as per the UI Design
///
extension ScreenExtension on num {
  /// Adaptive Height
  ///
  double get h => this * ScreenUtils().sh;

  /// Adaptive Width
  ///
  double get w => this * ScreenUtils().sw;

  /// Adaptive Text Size
  ///
  double get sp => ScreenUtils().setSp(this);
}
