// Flutter code sample for

// The following example (depicted above) transitions an AnimatedContainer
// between two states. It adjusts the [height], [width], [color], and
// [alignment] properties when tapped.

import 'package:flutter/material.dart';

class FullPage extends StatelessWidget {
    static const String _title = 'Flutter Code Sample';
    
    @override
    Widget build(BuildContext context) {
        return new MaterialApp(
            title: _title,
            home: MyStatefulWidget(title: _title, testValue: '哈哈')
        );
    }
}


/// This Widget is the main application widget.
class MyStatefulWidget extends StatefulWidget {
    MyStatefulWidget({Key key, this.title, this.testValue}) : super(key: key);
    final title;
    final testValue;
    @override
    _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
    int _currenIndex = 0;
    
    static _item(String title, Color color) {
        return Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: color,
            ),
            child: Text(title, style: TextStyle(color: Colors.white))
        );
    }
    Future<Null> _onRefresh() async {
        await Future.delayed(Duration(milliseconds: 200));
        return null;
    }
    Widget list = ListView(
        children: [
            Container(
                decoration: BoxDecoration(color: Colors.white),
                // alignment: Alignment.center,
                child: Column(
                    children: [
                        Image.asset('images/img1.jpg', width:100, height: 100),
                        TextField(
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                hintText: '请输入用户名',
                                hintStyle: TextStyle(fontSize: 20)
                            )
                        ),
                        Container(
                            height: 200,
                            decoration: BoxDecoration(
                                color: Colors.blue
                            ),
                            child: PageView(
                                children: <Widget>[
                                    _item('A', Colors.black),
                                    _item('B', Colors.purple),
                                    _item('C', Colors.red),
                                ]
                            )
                        )
                    ]
                )
            )
        
        ]
    );
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: Text(widget.title + widget.testValue)),
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currenIndex,
                onTap: (index) {
                    setState(() {
                        _currenIndex = index;
                    });
                },
                items: [
                    BottomNavigationBarItem(
                        title: Text('首页'),
                        icon: Icon(Icons.android, color: Colors.grey),
                        activeIcon: Icon(Icons.android, color: Colors.blue),
                    ),
                    BottomNavigationBarItem(
                        title: Text('列表'),
                        icon: Icon(Icons.menu, color: Colors.grey),
                        activeIcon: Icon(Icons.menu, color: Colors.blue),
                    )
                ]
            ),
            floatingActionButton: FloatingActionButton(onPressed: () => {
                print('floatingActionButton')
            }, child: Text('点我')),
        body: _currenIndex == 0 ?
        RefreshIndicator(child: list, onRefresh: _onRefresh,)
            : Text('2')
        );
    }
}
