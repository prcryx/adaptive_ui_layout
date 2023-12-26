A Flutter package for creating responsive layouts, widgets, and managing dimensions easily. This package is designed to simplify the process of building responsive Flutter applications by providing a set of utilities and widgets that adapt to different screen sizes and orientations.

## Features

- **Responsive Layouts:** Easily create responsive designs that look great on various screen sizes.
- **Dimension Management:** Simplify handling dimensions and spacing with predefined constants and utilities.
- **Planned Feature:** Custom widgets for further enhancing the responsiveness of your UI components.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_responsive_layout: ^1.0.0
```

then run `flutter pub get`

## Usage

Add `ResponsiveLauout` to your MaterialApp or CupertinoApp. Define your own UI screen size.

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      builder: (context, child) => ResponsiveLayout(builder: (context) {
        return child!;
      }),
      home: const MyHomePage(title: 'Flutter Responsive Layout'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.blue,
              height: 115,
              width: 115,
            ),
            20.hs, // horizontal spacer
            Container(
              color: Colors.orange,
              height: 115.h, //
              width: 115.w,
            )
          ],
        ),
      ),
    );
  }
}
```

## Contribution

We welcome contributions! Feel free to open issues, submit pull requests, or provide feedback.

## License

This project is licensed under the BSD Zero Clause License - see the [LICENSE](LICENSE) file for details.
