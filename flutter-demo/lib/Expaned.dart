import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
    @override
    _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    @override
    var col = Column(
        children: <Widget>[
            Expanded(
                child: Container(
                    decoration: BoxDecoration(color: Colors.red),
                    child: Text('hello')
                )
            )
        ],
    );
    var row = Column(
        children: <Widget>[
            Expanded(
                child: Container(
                    height: 100,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Colors.red),
                    child: Text('1'),
                )
            ),
            Container(
                height: 100,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.red),
                child: FractionallySizedBox(
                    widthFactor: 1,
                    child: Text('hello')
                )
            )
        ],
    );
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'test',
            home: Scaffold(
                appBar: AppBar(title: Text('test')),
                body: row
            )
        );
    }
}