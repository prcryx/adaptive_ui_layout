part of flutter_responsive_layout;

/// Adapted to the device width as per the UI Design
///
extension ScreenExtension on num {
  /// Adapted Height
  ///
  double get h => this * ScreenUtils().sh;

  /// Adapted Width
  ///
  double get w => this * ScreenUtils().sw;
}
