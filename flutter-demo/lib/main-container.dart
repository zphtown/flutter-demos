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
             child: Container(
                 padding: EdgeInsets.all(10),
                 margin: EdgeInsets.all(10),
                 color: Colors.redAccent,
                 child: Container(
                     width:100,
                     height:100,
                     padding: EdgeInsets.all(10),
                     color: Colors.white,
                     child: new Text("12345", style: TextStyle(fontSize:20.0)),
                 )
             )
         );
    }
}