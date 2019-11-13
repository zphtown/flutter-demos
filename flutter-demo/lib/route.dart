import 'package:flutter/material.dart';
import './route-page1.dart';
import './route-page2.dart';
import './route-gusture.dart';
import './route-clip.dart';
import './route-statefulWidget.dart';
import './route-statelessWidget.dart';
import './route-res.dart';
import './route-lanucher.dart';
import './route-life-cycle.dart';
import './route-app-life-cycle.dart';
import './route-photo-app.dart';
import './route-image.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  final _title = 'route test';
  bool byName = false;
  Brightness _brightness = Brightness.light;

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
          title: _title,
          color: Colors.white,
          theme: ThemeData(
              brightness: _brightness,
              primarySwatch: Colors.blue
          ),
          home: Scaffold(
              appBar: AppBar(
                  title: Text('路由')
              ),
              body: Column(
                  children: <Widget>[
                      RaisedButton(
                        onPressed: () {
                            print('1');
                            if (_brightness == Brightness.dark) {
                                _brightness = Brightness.light;
                            } else {
                                _brightness = Brightness.dark;
                            }
                            print(_brightness);
                        },
                        child: Text('change theme')
                      ),
                      Menulist()
                  ],
              )
          ),
          routes: <String, WidgetBuilder>{
              'page1': (BuildContext context) => Page1(),
              'page2': (BuildContext context) => Page2(),
              'GusturePage': (BuildContext context) => GusturePage(),
              'ClipPage': (BuildContext context) => ClipPage(),
              'FullPage': (BuildContext context) => FullPage(),
              'LessPage': (BuildContext context) => LessPage(),
              'ResPage': (BuildContext context) => ResPage(),
              'UsePluginsPage': (BuildContext context) => UsePluginsPage(),
              'LifeCyclePage': (BuildContext context) => LifeCyclePage(),
              'AppLifeCycle': (BuildContext context) => AppLifeCycle(),
              'PhotoApp': (BuildContext context) => PhotoApp(),
              'ImagePage': (BuildContext context) => ImagePage(),
          },
      );
  }
}

class Menulist extends StatefulWidget{
    Menulist({Key key}) : super(key: key);

    @override
    _MenulistState createState() => _MenulistState();
}

class _MenulistState extends State<Menulist>{
    bool isByName = true;
    @override
    Widget build(BuildContext context) {
        return Column(
          children: <Widget>[
              SwitchListTile(
                  title: Text('${isByName ? '' : '不'}通过路由名字跳转'),
                  value: isByName,
                  onChanged: (value) => _nameChange(value)
              ),
              _item('page1', 'page1', Page1()),
              _item('page2', 'page2', Page2()),
              _item('GusturePage', 'GusturePage', GusturePage()),
              _item('ClipPage', 'ClipPage', ClipPage()),
              _item('stateFullPageGroup', 'FullPage', FullPage()),
              _item('stateLessPageGroup', 'LessPage', LessPage()),
              _item('ResPage', 'ResPage', ResPage()),
//              _item('UsePluginsPage', 'UsePluginsPage', UsePluginsPage()),
//              _item('LifeCyclePage', 'LifeCyclePage', LifeCyclePage()),
//              _item('AppLifeCycle', 'AppLifeCycle', AppLifeCycle()),
              _item('PhotoApp', 'PhotoApp', PhotoApp()),
//              _item('ImagePage', 'ImagePage', ImagePage()),
          ],
        );
    }
    _item(String title, String RouteName, page) {
        return RaisedButton(
            onPressed: () {
                if (isByName) {
                    Navigator.pushNamed(context, RouteName);
                } else {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
                }
            },
            child: Text(title)
        );
    }
    _nameChange(value) {
        setState(() {
            isByName = value;
        });
    }
}