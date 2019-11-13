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
        var card = new SizedBox(
            height: 210.0,
            child: new Card(
                child: new Column(
                    children: [
                        new ListTile(
                            title: new Text('1625 Main Street',
                                style: new TextStyle(fontWeight: FontWeight.w500)),
                            subtitle: new Text('My City, CA 99984'),
                            leading: new Icon(
                                Icons.restaurant_menu,
                                color: Colors.blue[500],
                            ),
                        ),
                        new Divider(),
                        new ListTile(
                            title: new Text('(408) 555-1212',
                                style: new TextStyle(fontWeight: FontWeight.w500)),
                            leading: new Icon(
                                Icons.contact_phone,
                                color: Colors.blue[500],
                            ),
                        ),
                        new ListTile(
                            title: new Text('costa@example.com'),
                            leading: new Icon(
                                Icons.contact_mail,
                                color: Colors.blue[500],
                            ),
                        ),
                    ],
                ),
            ),
        );
        //...
        return card;
    }
}