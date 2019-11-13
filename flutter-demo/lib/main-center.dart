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
         return Center(
             child: Container(
                 width:70.0,
                 height:70.0,
                 padding: EdgeInsets.all(10),
                 margin: EdgeInsets.all(10),
                 color: Colors.redAccent,
                 child: new Text("12345", style: TextStyle(fontSize:20.0)),
             )
         );
    }
}