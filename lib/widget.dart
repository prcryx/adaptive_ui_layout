part of flutter_responsive_layout;

typedef ResponsiveLayoutBuilder = Widget Function(BuildContext context);

/// Add the [ResponsiveLayout] to your [MaterialApp] or [CupertinoApp]
///
class ResponsiveLayout extends StatelessWidget {
  final ResponsiveLayoutBuilder builder;

  /// UI width and height. defaultSize: Size(360, 800)
  ///
  final Size? designSize;

  const ResponsiveLayout({
    super.key,
    required this.builder,
    this.designSize,
  });

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orintation) {
      ScreenUtils.init(
        context,
        uiWidth: designSize?.width,
        uiHeight: designSize?.height,
      );
      return builder(context);
    });
  }
}
