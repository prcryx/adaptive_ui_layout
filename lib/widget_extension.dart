part of flutter_responsive_layout;

extension WidgetExtension on num {
  SizedBox get hs => SizedBox(height: this * ScreenUtils().sh);
  SizedBox get ws => SizedBox(width: this * ScreenUtils().sw);
}
