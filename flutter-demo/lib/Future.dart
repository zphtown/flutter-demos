import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyPage());

class MyPage extends StatefulWidget {
    @override
    _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
    Future<CommonModel> fetchData() async {
        var url = 'http://www.imooc.com/api/home/slider';
        var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
        var body = json.decode(Utf8Decoder().convert(response.bodyBytes));
//      print(CommonModel.fromJson(body.slider));
        return CommonModel.fromJson(body);
    }
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'future demo',
            color: Colors.white,
            home: Scaffold(
                appBar: AppBar(title: Text('future demo')),
                body: _futureDemo()
            )
        );
    }

    _futureDemo() {
        return FutureBuilder<CommonModel>(
            future: fetchData(),
            builder: (BuildContext context, AsyncSnapshot<CommonModel> snapshot) {
                switch(snapshot.connectionState) {
                    case ConnectionState.none:
                        return Text('no url');
                    case ConnectionState.waiting:
                        return Center(child: CircularProgressIndicator());
                    case ConnectionState.active:
                        return Text('');
                    case ConnectionState.done:
                        if (snapshot.hasError) {
                            return Text('has error');
                        } else {
                            return  Container(
                                height: 160,
                                decoration: BoxDecoration(color: Colors.white),
                                child: Swiper(
                                    itemBuilder: (BuildContext context,int index){
                                        return Image.network("http:${snapshot.data.slider[index]['picUrl']}", fit: BoxFit.fill);
                                    },
                                    itemCount: snapshot.data.slider.length,
                                    pagination: new SwiperPagination()
                                )
                            );
                        }
                }
            }
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
