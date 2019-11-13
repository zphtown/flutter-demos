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
            child: ParentWidget(),
        );
    }
}
class ParentWidget extends StatefulWidget {
    @override
    _ParentWidgetState createState() => new _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
    bool _active = false;
    
    void _handleTapboxChanged(bool newValue) {
        setState(() {
            _active = newValue;
        });
    }
    
    @override
    Widget build(BuildContext context) {
        return new Container(
            child: new TapboxC(
                active: _active,
                onChanged: _handleTapboxChanged,
            ),
        );
    }
}

class TapboxC extends StatefulWidget {
    TapboxC({Key key, this.active: false, @required this.onChanged})
        : super(key: key);
    
    final bool active;
    final ValueChanged<bool> onChanged;
    
    _TapboxCState createState() => new _TapboxCState();
}

class _TapboxCState extends State<TapboxC> {
    bool _highlight = false;
    
    void _handleTapDown(TapDownDetails details) {
        setState(() {
            _highlight = true;
        });
    }
    
    void _handleTapUp(TapUpDetails details) {
        setState(() {
            _highlight = false;
        });
    }
    
    void _handleTapCancel() {
        setState(() {
            _highlight = false;
        });
    }
    
    void _handleTap() {
        widget.onChanged(!widget.active);
    }
    
    Widget build(BuildContext context) {
        // This example adds a green border on tap down.
        // On tap up, the square changes to the opposite state.
        return new GestureDetector(
            onTapDown: _handleTapDown, // Handle the tap events in the order that
            onTapUp: _handleTapUp, // they occur: down, up, tap, cancel
            onTap: _handleTap,
            onTapCancel: _handleTapCancel,
            child: new Container(
                child: new Center(
                    child: new Text(widget.active ? 'Active' : 'Inactive',
                        style: new TextStyle(fontSize: 32.0, color: Colors.white)),
                ),
                width: 200.0,
                height: 200.0,
                decoration: new BoxDecoration(
                    color:
                    widget.active ? Colors.lightGreen[700] : Colors.grey[600],
                    border: _highlight
                        ? new Border.all(
                        color: Colors.teal[700],
                        width: 10.0,
                    )
                        : null,
                ),
            ),
        );
    }
}