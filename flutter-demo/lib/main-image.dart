import 'package:flutter/material.dart';
void main(){
    return runApp(new MaterialApp(
        title: 'Shopping App',
        home: new Test(),
    ));
}
class Test extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
//                const Image(
//                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
//                ),
                Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                Image.asset('images/img1.jpg'),
                Image.asset('images/img2.jpg'),
                Image.asset('images/img3.jpg'),
            ]
        );
    }
}