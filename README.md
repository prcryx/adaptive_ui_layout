# Adaptive UI Layout

A Flutter package for creating responsive layouts, widgets, and managing dimensions easily. This package is designed to simplify the process of building responsive Flutter applications by providing a set of utilities and widgets that adapt to different screen sizes and orientations.

## Features

- **Responsive Layouts:** Easily create responsive designs that look great on various screen sizes.
- **Dimension Management:** Simplify handling dimensions and spacing with predefined constants and utilities.
- **Planned Feature:** Custom widgets for further enhancing the responsiveness of your UI components.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  adaptive_ui_layout: ^1.1.0
```

then run `flutter pub get`

## Usage

Add `ResponsiveLauout` to your `MaterialApp` or `CupertinoApp`. Define your own UI screen size.

```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      builder: (context, child) => ResponsiveLayout(
        designSize: Size(360, 800),
        builder: (context) {
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
              height: 115.h, // ui dependent height
              width: 115.w, // ui dependent width
            ),
            20.hs,
            Container(
              color: Colors.lime,
              height: context.mediaQueryData.size.height * 0.1, // depend on MediaQuery
              width: 115,
            )
          ],
        ),
      ),
    );
  }
}
```

## Useful APIs:

| API   | Description                                     | Example Usage                                      |
| ----- | ----------------------------------------------- | -------------------------------------------------- |
| `.w`  | Design dependent width                          | `Container(width: 112.w)`                          |
| `.h`  | Design dependent height                         | `Container(height: 112.h)`                         |
| `.ws` | Design dependent SizedBox for horizontal spacer | `Row(children:[112.ws, Container()])`              |
| `.hs` | Design dependent SizedBox for vertical spacer   | `Column(children:[112.hs, Container()])`           |
| `.sp` | For Text Scaling                                | `Text('prcryx', style:TextStyle(fontSize: 16.sp))` |
| `.mediaQueryData` | For Accessing MediaQuery Data                                | `Padding(padding: EdgeInsets.only(top: context.mediaQueryData.viewPadding.top), child:...)` |

## Contribution

We welcome contributions! Feel free to open issues, submit pull requests, or provide feedback.

## License

This project is licensed under the BSD Zero Clause License - see the [LICENSE](LICENSE) file for details.
