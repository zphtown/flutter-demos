import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyPage extends StatefulWidget {
    @override
    _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
    Future<CommonModel> fetchData() async {
        var url = 'http://www.imooc.com/api/home/slider';
        var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
        var body = json.decode(response.body);
        return CommonModel.fromJson(body);
    }
    @override
    Widget build(BuildContext context) {
        return Container(
            margin: EdgeInsets.only(top: 100),
            child: Column(
                children: <Widget>[
                    InkWell(
                        child: Text('click me'),
                        onTap: () {
                            fetchData().then((res) {
                                print(res.slider is List);
                            });
                        }
                    )
                ],
            )
        );
    }
}

class CommonModel {
    final int code;
    final List slider;

    CommonModel({this.code, this.slider});

    factory CommonModel.fromJson(Map<String, dynamic>json) {
        return CommonModel(
            code: json['code'],
            slider: json['slider']
        );
    }
}
