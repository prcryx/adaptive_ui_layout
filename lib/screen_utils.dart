part of flutter_responsive_layout;

class ScreenUtils {
  static late ScreenUtils _instance;
  late double uiWidth;
  late double uiHeight;
  static late MediaQueryData _mediaQueryData;
  static late double _screenHeight;
  static late double _screenWidth;
  ScreenUtils._();

  factory ScreenUtils() {
    return _instance;
  }

  static void init(
    BuildContext context, {
    double? uiWidth,
    double? uiHeight,
  }) {
    _instance = ScreenUtils._();
    _instance.uiWidth = uiWidth ?? ScreenLayoutConstants.defaultSize.width;
    _instance.uiHeight = uiHeight ?? ScreenLayoutConstants.defaultSize.height;
    final mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
  }

  MediaQueryData get mediaQueryData => _mediaQueryData;

  double get sh => _screenHeight / uiHeight;
  double get sw => _screenWidth / uiWidth;
}
