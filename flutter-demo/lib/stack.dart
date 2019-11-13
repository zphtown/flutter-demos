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
        return new MaterialApp(
            title: _title,
            home: new Scaffold(
                appBar: new AppBar(
                    title: new Text(_title),
                ),
                body: MyHomePage()
            )
        );
    }
}
class MyHomePage extends StatefulWidget{
    MyHomePage({Key key}) : super(key: key);
    
    @override
    _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
        var stack = new Stack(
            alignment: const Alignment(0.6, 0.6),
            children: [
                new CircleAvatar(
                    backgroundImage: new AssetImage('images/img1.jpg'),
                    radius: 100.0,
                ),
                new Container(
                    decoration: new BoxDecoration(
                        color: Colors.black45,
                    ),
                    child: new Text(
                        'Mia B',
                        style: new TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                        ),
                    ),
                ),
            ],
        );
        // ...
        return stack;
    }
}