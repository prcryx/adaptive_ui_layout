part of flutter_responsive_layout;

extension ScreenExtension on num {
  double get h => this * ScreenUtils().sh;
  double get w => this * ScreenUtils().sw;
}
