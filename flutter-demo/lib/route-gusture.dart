import 'package:flutter/material.dart';

class GusturePage extends StatefulWidget{
    GusturePage({Key key}) : super(key: key);

    @override
    _GusturePageState createState() => _GusturePageState();
}

class _GusturePageState extends State<GusturePage>{
    final _title = 'gusture1';
    double moveX = 0, moveY = 0;
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(_title)
            ),
            body: FractionallySizedBox(
                widthFactor: 1,
                child: Stack(
                    children: <Widget>[
                        GestureDetector(
                            onTap: () => _click('点击'),
                            onTapCancel: () =>  _click('取消'),
                            onDoubleTap: () =>  _click('双击'),
                            onLongPress: () =>  _click('长按'),
                            onTapUp: (e) => _click('抬起'),
                            onTapDown: (e) => _click('按下'),
                            child: Container(
                                height: 100,
                                padding: EdgeInsets.all(10),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                ),
                                child: Text('click me')
                            )
                        ),
                        Positioned(
                            width:50,
                            height: 50,
                            left: moveX,
                            top: moveY,
                            child: GestureDetector(
                                onPanUpdate:(e) => _move(e),
                                child: Opacity(
                                    opacity:0.7,
                                    child:  Container(
                                    width:100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:BorderRadius.circular(25)
                                    ),
                                ))
                            )
                        )
                    ],
                ),
            )
        );
    }
    _click(String msg){
        print(msg);
    }
    _move(DragUpdateDetails e) {
        setState(() {
          moveX += e.delta.dx;
          moveY += e.delta.dy;
        });
    }
}