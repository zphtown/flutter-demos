import 'package:flutter/material.dart';

class ClipPage extends StatefulWidget {
    @override
    _ClipPageState createState() => _ClipPageState();
}

class _ClipPageState extends State<ClipPage> {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'test',
            home: Scaffold(
                appBar: AppBar(title: Text('test')),
                body: Container(
                    child: ListView(
                        children: <Widget>[
                            Row(
                                children:  <Widget>[
                                    ClipOval(
                                        child: SizedBox(
                                            width:100,
                                            height:100,
                                            child: Image.asset('images/img1.jpg')
                                        )
                                    ),
                                    Padding(
                                        padding: EdgeInsets.all(20),
                                        child: ClipRect(
                                            child: SizedBox(
                                                width:100,
                                                height:100,
                                                child: Image.asset('images/img1.jpg')
                                            )
                                        ),
                                    )
                                ]
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                child: Opacity(
                                    opacity: 0.6,
                                    child: Image.asset('images/img1.jpg', width: 100,height:100)
                                )
                            ),
                            Container(
                                margin: EdgeInsets.all(0),
                                height: 100,
                                decoration: BoxDecoration(
//                                    color: Colors.blue
                                ),
                                child: PhysicalModel(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),
                                    clipBehavior: Clip.antiAlias,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.red
                                        ),
                                        child: FractionallySizedBox(
                                            widthFactor: 1,
                                            child: Container(
                                                padding: EdgeInsets.all(20),
                                                alignment: Alignment.center,
                                                child: Text('hello', style: TextStyle(color: Colors.white))
                                            )
                                        )
                                    )
                                )
                            ),
                            Container(
                                height: 100,
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(color: Colors.red),
                                child: FractionallySizedBox(
                                    widthFactor: 1,
                                    child: Container(
                                        padding: EdgeInsets.all(20),
                                        alignment: Alignment.center,
                                        child: Text('hello', style: TextStyle(color: Colors.white))
                                    )
                                )
                            ),
                            Stack(
                                children: <Widget>[
                                    Image.asset('images/img3.jpg', width:300),
                                    Image.asset('images/img5.jpg', width:300),
                                    Positioned(
                                        left: 0,
                                        top:0,
                                        child: Image.asset('images/img1.jpg', width: 100, height:100),
                                    )
                                ],
                            ),
                            Wrap(
                                spacing: 10,
                                runSpacing: 10,
                                children: <Widget>[
                                    _chip('fulter'),
                                    _chip('vue'),
                                    _chip('react'),
                                    _chip('bootstrap'),
                                    _chip('angular'),
                                    _chip('react-native'),
                                    _chip('mock'),
                                ],
                            )
                        ],
                    )
                )
            )
        );
    }
    _chip(String label) {
        return Chip(
            label: Text(label),
            avatar: CircleAvatar(
                child: Text(label.substring(0,1).toUpperCase(), style:TextStyle(fontSize: 12)),
                backgroundColor: Colors.red.shade200
            )
        );
    }
}

