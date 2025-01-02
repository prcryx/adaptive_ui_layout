import 'package:adaptive_ui_layout/screen_layout.dart';
import 'package:flutter/material.dart';

class ScreenUtils {
  static late ScreenUtils _instance;
  late double uiWidth;
  late double uiHeight;
  static late MediaQueryData _mediaQueryData;
  static late double _screenHeight;
  static late double _screenWidth;
  static late TextScaler _textScaler;
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
    _textScaler = mediaQuery.textScaler;
  }

  MediaQueryData get mediaQueryData => _mediaQueryData;

  /// scale height factor
  double get sh => _screenHeight / uiHeight;

  /// scale width factor
  double get sw => _screenWidth / uiWidth;

  /// setSp
  double setSp(num fontSize) => _textScaler.scale(fontSize * sw);
}
