import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _images = [
      'http://via.placeholder.com/350x150',
      'http://via.placeholder.com/350x150',
      'http://via.placeholder.com/350x150',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: <Widget>[
            Container(
                height: 160,
                child: Swiper(
                    itemBuilder: (BuildContext context,int index){
                        return new Image.network(image: _images[index], placeholder: 'imgs/img1.jpg',fit: BoxFit.fill);
                    },
                    itemCount: _images.length,
                    pagination: new SwiperPagination(),
                    control: new SwiperControl(),
                )
            )
        ],
    );
  }
}
