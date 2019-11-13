// Flutter code sample for

// The following example (depicted above) transitions an AnimatedContainer
// between two states. It adjusts the [height], [width], [color], and
// [alignment] properties when tapped.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//        return new Container(
//            decoration: new BoxDecoration(color: Colors.white),
//            child: new Center(
//                child: new Text('Hello World',  textDirection: TextDirection.ltr, style: TextStyle(color: Colors.black)),
//            ),
//        );
//    }
    static const String _title = 'Flutter Code Sample';
    
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: _title,
            theme: new ThemeData(
                primarySwatch: Colors.blue,
            ),
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
    @override
    Widget build(BuildContext context) {
        var ratings = new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    new Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                            new Icon(Icons.star, color: Colors.black),
                            new Icon(Icons.star, color: Colors.black),
                            new Icon(Icons.star, color: Colors.black),
                            new Icon(Icons.star, color: Colors.black),
                            new Icon(Icons.star, color: Colors.black),
                        ],
                    ),
                    new Text(
                        '170 Reviews',
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 20.0,
                        ),
                    ),
                ],
            ),
        );
        var descTextStyle = new TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontFamily: 'Roboto',
            letterSpacing: 0.5,
            fontSize: 18.0,
            height: 2.0,
        );
        
        // DefaultTextStyle.merge可以允许您创建一个默认的文本样式，该样式会被其
        // 所有的子节点继承
        var iconList = DefaultTextStyle.merge(
            style: descTextStyle,
            child: new Container(
                padding: new EdgeInsets.all(20.0),
                child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                        new Column(
                            children: [
                                new Icon(Icons.kitchen, color: Colors.green[500]),
                                new Text('PREP:'),
                                new Text('25 min'),
                            ],
                        ),
                        new Column(
                            children: [
                                new Icon(Icons.timer, color: Colors.green[500]),
                                new Text('COOK:'),
                                new Text('1 hr'),
                            ],
                        ),
                        new Column(
                            children: [
                                new Icon(Icons.restaurant, color: Colors.green[500]),
                                new Text('FEEDS:'),
                                new Text('4-6'),
                            ],
                        ),
                    ],
                ),
            ),
        );
        var titleText = new Text('title...', style: TextStyle(fontSize:20, color: Colors.black, fontWeight: FontWeight.w700));
        var subTitle = new Text('desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...desc...', style: TextStyle(color: Colors.black38, fontSize: 15));
        var leftColumn = new Container(
            padding: new EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
            child: new Column(
                children: [
                    titleText,
                    subTitle,
                    ratings,
                    iconList,
                ],
            ),
        );
        var rightColumn = Image.asset('images/img2.jpg');
        return new Container(
            margin: new EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 30.0),
            height: 600.0,
            child: new Card(
                child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        new Container(
                            width: 220.0,
                            child: leftColumn,
                        ),
                        rightColumn,
                    ],
                ),
            ),
        );
    }
}