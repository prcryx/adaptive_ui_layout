part of flutter_responsive_layout;

extension WidgetExtension on num {
  /// SizedBox with adaptive height
  ///
  SizedBox get hs => SizedBox(height: this * ScreenUtils().sh);

  /// SizedBox with adaptive width
  ///
  SizedBox get ws => SizedBox(width: this * ScreenUtils().sw);
}
