import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _images = [
      'imgs/img1.jpg',
      'imgs/img2.jpg',
      'imgs/img3.jpg',
      'imgs/img4.jpg',
      'imgs/img5.jpg',
      'imgs/img6.jpg',
  ];
  double appBarAlpha = 1;
  final APPBAR_SCROLL_OFFSET = 100;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
          body: Stack(
              children: <Widget>[
                  MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: NotificationListener(
                          onNotification: (top) {
//                      print('no scroll');
                              if (top is ScrollUpdateNotification) {
//                        print('scrolltop=${top.metrics.pixels}');
                                  _onScroll(top.metrics.pixels);
                              }
                          },
                          child: ListView(
                              children: <Widget>[
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                                  Container(
                                      height: 160,
                                      child: Swiper(
                                          itemBuilder: (BuildContext context,int index){
                                              return new Image.asset(_images[index], fit: BoxFit.fill);
                                          },
                                          itemCount: _images.length,
                                          pagination: new SwiperPagination()
                                          //                        control: new SwiperControl(),
                                      )
                                  ),
                              ],
                          )
                      )
                  ),
                  Opacity(
                      opacity: appBarAlpha,
                      child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.red
                          ),
                          child: Center(
                              child: Text('首页')
                          ),
                      )
                  )
              ],
          )
      );
  }

  void _onScroll(double pixels) {
      var alpha = pixels / APPBAR_SCROLL_OFFSET;
      if (alpha < 0) {
          alpha = 0;
      } else if (alpha > 1) {
          alpha = 1;
      }
      setState(() {
        appBarAlpha = alpha;
      });
      print('appBarAlpha=$appBarAlpha');
  }
}
