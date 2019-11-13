import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Image.asset('images/img1.jpg', height:100, fit: BoxFit.fill)
    );
  }
}
