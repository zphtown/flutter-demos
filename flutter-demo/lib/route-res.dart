import 'package:flutter/material.dart';

class ResPage extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('page1'),
//                leading: GestureDetector(
//                    onTap: () {
//                        Navigator.pop(context);
//                    },
//                    child: Icon(Icons.arrow_back)
//                ),
            ),
            body: Container(
                child: Column(
                    children: <Widget>[
                        Image(
                            image: AssetImage('images/img1.jpg')
                        ),
                        Image.asset('images/img2.jpg')
                    ],
                )
            ),
        );
    }
}