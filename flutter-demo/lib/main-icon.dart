import 'package:flutter/material.dart';
void main(){
    return runApp(new MaterialApp(
        title: 'Shopping App',
        home: new Test(),
    ));
}
class Test extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Container(
            padding: EdgeInsets.all(20),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: 24.0,
                        semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    Icon(
                        Icons.audiotrack,
                        color: Colors.green,
                        size: 30.0,
                    ),
                    Icon(
                        Icons.beach_access,
                        color: Colors.blue,
                        size: 36.0,
                    ),
                    Icon(
                        Icons.ac_unit,
                        color: Colors.blue,
                        size: 36.0,
                    ),
                    Icon(
                        Icons.access_alarm,
                        color: Colors.blue,
                        size: 36.0,
                    ),
                    Icon(
                        Icons.accessibility_new,
                        color: Colors.blue,
                        size: 36.0,
                    ),
                    Icon(
                        Icons.accessible,
                        color: Colors.blue,
                        size: 36.0,
                    ),
                    Icon(
                        Icons.accessibility,
                        color: Colors.blue,
                        size: 36.0,
                    ),
                    Icon(
                        Icons.accessible_forward,
                        color: Colors.blue,
                        size: 36.0,
                    ),
                ],
            )
        );
    }
}