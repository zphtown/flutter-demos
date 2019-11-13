import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UsePluginsPage extends StatefulWidget{
    UsePluginsPage({Key key}) : super(key: key);

    @override
    _UsePluginsPageState createState() => _UsePluginsPageState();
}

class _UsePluginsPageState extends State<UsePluginsPage>{
    final _title = 'url_launcher';
    double moveX = 0, moveY = 0;
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text(_title)
            ),
            body: Center(
                child: Column(
                    children: <Widget>[
                        RaisedButton(
                            onPressed: _launchURL,
                            child: Text('Show Flutter homepage'),
                        ),
                        RaisedButton(
                            onPressed: _goMap,
                            child: Text('Show google map'),
                        ),
                    ],
                )
            ),
        );
    }
    _launchURL() async {
        const url = 'https://flutter.dev';
        if (await canLaunch(url)) {
            await launch(url);
        } else {
            throw 'Could not launch $url';
        }
    }
    _goMap() async {
        var url = 'geo:52.32,4.917';
        if (await canLaunch(url)) {
            await launch(url);
        } else {
            // ios
            url = 'http:maps.apple.ccom?ll=52.32,4.917';
            if (await canLaunch(url)) {
                await launch(url);
            } else {
                throw 'Could not launch $url';
            }
            throw 'Could not launch $url';
        }
    }
}
