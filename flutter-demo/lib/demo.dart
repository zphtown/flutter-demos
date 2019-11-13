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
        Widget title =  Container(
            padding: EdgeInsets.all(32.0),
            child:  Row(
                children: [
                    Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Container(
                                    padding: const EdgeInsets.only(bottom: 8.0),
                                    child: Text('Oeschinen Lake Campground', style: new TextStyle(
                                        fontWeight: FontWeight.bold,
                                    )),
                                ),
                                Text('Kandersteg, Switzerland',  style: new TextStyle(
                                    color: Colors.grey[500],
                                ))
                            ]
                        ),
                    ),
                    Icon(Icons.star, color: Colors.red[500]),
                    Text('41')
                ]
            )
        );
//        const iconStyle = TextStyle(color: Colors.blue);
//        Widget icon = Container(
////            padding: EdgeInsets.symmetric(vertical: 50),
//            child: Row(
//                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                children: [
//                    Column(
//                        children: [
//                            Icon(Icons.call, color: Colors.blue),
//                            Text('Call', style: iconStyle)
//                        ],
//                    ),
//                    Column(
//                        children: [
//                            Icon(Icons.near_me, color: Colors.blue),
//                            Text('ROUTE', style: iconStyle)
//                        ],
//                    ),
//                    Column(
//                        children: [
//                            Icon(Icons.share, color: Colors.blue),
//                            Text('SHARE', style: iconStyle)
//                        ],
//                    )
//                ]
//            )
//        );
        Column buildButtonColumn(IconData icon, String label) {
            Color color = Theme.of(context).primaryColor;
            
            return new Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    new Icon(icon, color: color),
                    new Container(
                        margin: const EdgeInsets.only(top: 8.0),
                        child: new Text(
                            label,
                            style: new TextStyle(
                                fontSize:12.0,
                                fontWeight: FontWeight.w400,
                                color: color
                            )
                        )
                    )
                ]
            );
        }
        Widget icon2 = Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                buildButtonColumn(Icons.call, 'CALL'),
                buildButtonColumn(Icons.near_me, 'ROUTE'),
                buildButtonColumn(Icons.share, 'SHARE'),
            ]
        );
        Widget content = Container(
            padding: EdgeInsets.all(32.0),
            child: Text('ke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the fooke Oeschinen lies at the foo', softWrap: true),
        );
        Widget img =  new Image.asset(
            'images/img1.jpg',
            height: 240.0,
            fit: BoxFit.cover,
        );
        return ListView(
            children: [
                img,
                title,
                icon2,
                content
            ]
        );
    }
}