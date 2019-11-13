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
        return new Center(
            child: TapboxA(),
        );
    }
}


class TapboxA extends StatefulWidget {
    TapboxA({Key key}) : super(key: key);
    
    @override
    _TapboxAState createState() => new _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
    bool _active = false;
    
    void _handleTap() {
        setState(() {
            _active = !_active;
        });
    }
    
    Widget build(BuildContext context) {
        return new GestureDetector(
            onTap: _handleTap,
            child: new Container(
                child: new Center(
                    child: new Text(
                        _active ? 'Active' : 'Inactive',
                        style: new TextStyle(fontSize: 32.0, color: Colors.white),
                    ),
                ),
                width: 200.0,
                height: 200.0,
                decoration: new BoxDecoration(
                    color: _active ? Colors.lightGreen[700] : Colors.grey[600],
                ),
            ),
        );
    }
}
