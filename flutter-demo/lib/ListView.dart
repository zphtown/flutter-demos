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


List<Widget> list = <Widget>[
    new ListTile(
        title: new Text('CineArts at the Empire',
            style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: new Text('85 W Portal Ave'),
        leading: new Icon(
            Icons.theaters,
            color: Colors.blue[500],
        ),
    ),
    new ListTile(
        title: new Text('The Castro Theater',
            style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 20.0)),
        subtitle: new Text('429 Castro St'),
        leading: new Icon(
            Icons.theaters,
            color: Colors.blue[500],
        ),
    ),
    // ...
    // See the rest of the column defined on GitHub:
    // https://raw.githubusercontent.com/flutter/website/master/_includes/code/layout/listview/main.dart
];

class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            // ...
            body: new Center(
                child: new ListView(
                    children: list,
                ),
            ),
        );
    }
}
