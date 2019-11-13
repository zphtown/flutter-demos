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
    var _list = [
        '北京',
        '深圳',
        '广州',
        '广州1',
        '广州2',
        '广州3',
        '广州4',
        '广州5',
        '广州6',
        '广州7',
        '广州8',
        '广州88',
        '广州888',
        '广州8888',
        '广州88888',
        '广州11',
        '广州12',
        '广州13',
        '广州134',
        '广州15',
        '广州16',
        '广州167',
    ];

    @override
    Widget build(BuildContext context) {
        return  Container(
//            height: 200,
            child: ListView(
                scrollDirection: Axis.horizontal,
                children:  _getList()
            )
        );
    }
  List<Widget> _getList() {
      return _list.map((v) => _item(v)).toList();
  }

  Widget _item(String v) {
        return Container(
            width: 180,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 5),
            decoration: BoxDecoration(
                color:Colors.teal
            ),
            child: Text(v, style: TextStyle(color: Colors.white))
        );
  }

}