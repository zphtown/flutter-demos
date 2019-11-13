import 'package:flutter/material.dart';

class Page1 extends StatelessWidget{
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
                child: Text('page1')
            ),
            floatingActionButton: FloatingActionButton(
                onPressed: () =>{
                    Navigator.pushNamed(context, 'page2')
                },
                tooltip: 'page2',
                child: const Icon(Icons.arrow_right),
            )
        );
  }
}