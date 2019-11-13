import 'package:flutter/material.dart';

class Page2 extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('page2'),
//                leading: GestureDetector(
//                    onTap: () {
//                        Navigator.pop(context);
//                    },
//                    child: Icon(Icons.arrow_back)
//                ),
            ),
            body: Text('page2')
        );
    }
}