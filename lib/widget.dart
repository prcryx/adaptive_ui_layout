part of flutter_responsive_layout;

typedef ResponsiveLayoutBuilder = Widget Function(BuildContext context);

/// A Flutter widget that facilitates building responsive layouts.
///
/// Add the [ResponsiveLayout] to your [MaterialApp] or [CupertinoApp]
/// The `ResponsiveLayout` widget takes a [ResponsiveLayoutBuilder] function,
/// which is responsible for constructing the UI based on the current screen size
/// and orientation.
/// designSize is used for UI width and height. defaultSize: Size(360, 800)
///
class ResponsiveLayout extends StatelessWidget {
  final ResponsiveLayoutBuilder builder;
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
