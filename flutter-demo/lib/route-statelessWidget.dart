// Flutter code sample for

// The following example (depicted above) transitions an AnimatedContainer
// between two states. It adjusts the [height], [width], [color], and
// [alignment] properties when tapped.

import 'package:flutter/material.dart';

/// This Widget is the main application widget.
class LessPage extends StatelessWidget {
    static const String _title = 'Flutter Code Sample';
    
    @override
    Widget build(BuildContext context) {
        var textStyle = TextStyle(fontSize: 20, color: Colors.black);
        return new MaterialApp(
            title: _title,
            home: new Scaffold(
                appBar: new AppBar(
                    title: new Text(_title),
                ),
                body: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: new BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 10,color: Colors.red),
                        borderRadius: BorderRadius.all(Radius.zero),
//                        image: Image.asset('images/img1.jpg'),
                    ),
                    child: Column(
                        children: [
                            Text('123', style: textStyle),
                            Icon(Icons.android, size: 20, color: Colors.red),
                            CloseButton(),
                            BackButton(),
                            Chip(
                                avatar: Icon(Icons.photo),
                                label: Text('hello chip')
                            ),
                            Divider(height:10, color: Colors.red, indent: 20),
                            Card(
                                color:Colors.red,
                                elevation: 25,
                                margin: EdgeInsets.all(10),
                                child: Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text('hello card', style: textStyle)
                                )
                            ),
                            AlertDialog(
                                title: Text('提示'),
                                titlePadding: EdgeInsets.all(20),
                                titleTextStyle: textStyle,
                                content: Text('fuck you'),
                                contentTextStyle: textStyle,
                                contentPadding: EdgeInsets.all(20),
                                backgroundColor: Colors.white,
                                elevation: 20
                            )
                        ]
                    )
                )
            )
        );
    }
}
