// Flutter code sample for

// The following example (depicted above) transitions an AnimatedContainer
// between two states. It adjusts the [height], [width], [color], and
// [alignment] properties when tapped.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
    static const String _title = 'Flutter Code Sample';
    
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: _title,
            home: Scaffold(
                appBar: AppBar(title: const Text(_title)),
                body: MyStatefulWidget(),
            ),
        );
    }
}

class MyStatefulWidget extends StatefulWidget {
    MyStatefulWidget({Key key}) : super(key: key);
    
    @override
    _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
    bool selected = false;
    
    @override
    Widget build(BuildContext context) {
        return GestureDetector(
            onTap: () {
                setState(() {
                    selected = !selected;
                });
            },
            child: Center(
                child: AnimatedCrossFade(
                    duration: const Duration(seconds: 3),
                    firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 100.0),
                    secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
                    crossFadeState: selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                ),
            ),
        );
    }
}