import 'package:flutter/material.dart';
import 'package:zph_travel/pages/home_page.dart';
import 'package:zph_travel/pages/search_page.dart';
import 'package:zph_travel/pages/travel_page.dart';
import 'package:zph_travel/pages/my_page.dart';
/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
    static const String _title = 'Flutter Code Sample';

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: _title,
            home: MyStatefulWidget(),
        );
    }
}

class MyStatefulWidget extends StatefulWidget {
    MyStatefulWidget({Key key}) : super(key: key);

    @override
    _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
    int _selectedIndex = 0;
    static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    final PageController _container = PageController(
        initialPage: 0
    );

    void _onItemTapped(int index) {
        setState(() {
            _selectedIndex = index;
        });
        _container.jumpToPage(index);
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('BottomNavigationBar Sample'),
            ),
            body: PageView(
                controller: _container,
                onPageChanged: (index) {
                    setState(() {
                        _selectedIndex = index;
                    });
                },
                children: <Widget>[
                    HomePage(),
                    SearchPage(),
                    TravelPage(),
                    MyPage()
                ]
            ),
            bottomNavigationBar: BottomNavigationBar(
                showUnselectedLabels: true,
                items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home),
                        title: Text('首页'),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search),
                        title: Text('搜索'),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.camera_alt),
                        title: Text('旅拍'),
                    ),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.account_circle),
                        title: Text('我的'),
                    ),
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.amber[800],
                unselectedItemColor: Colors.black87,
                onTap: _onItemTapped,
            ),
        );
    }
}