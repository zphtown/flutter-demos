import 'package:flutter/material.dart';
void main(){
    return runApp(new MaterialApp(
        title: 'Shopping App',
        home: new Test(),
    ));
}

class Test extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        TextStyle fontStyle =  TextStyle(
            fontSize: 30
        );
        return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
                Text(
                    'Hello! How are you?',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('We move under cover and we move as one', style: fontStyle),
                Text('Through the night, we have one shot to live another day', style: fontStyle),
                Text('We cannot let a stray gunshot give us away', style: fontStyle),
                Text('We will fight up close, seize the moment and stay in it', style: fontStyle),
                Text('It’s either that or meet the business end of a bayonet', style: fontStyle),
                Text('The code word is ‘Rochambeau,’ dig me?', style: fontStyle),
                Text('Rochambeau!', style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.0)),
                const Text.rich(
                    TextSpan(
                        text: 'Hello', // default text style
                        children: <TextSpan>[
                            TextSpan(text: ' beautiful ', style: TextStyle(fontStyle: FontStyle.italic)),
                            TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                    ),
                )
            ],
        );
    }
}