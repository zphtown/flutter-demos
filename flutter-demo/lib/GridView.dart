import 'package:flutter/material.dart';
var _title = 'GridView demo';
void main() => runApp(
    MaterialApp(
        title: _title,
        home: Scaffold(
            appBar: AppBar(title: Text(_title)),
            body: GridViewPage()
        )
    )
);

class GridViewPage extends StatelessWidget {
    List _list = [
        '广州',
        '深圳',
        '韶关',
        '东莞',
        '惠州',
        '揭阳',
        '湛江',
    ];
    @override
    Widget build(BuildContext context) {
        return GridView.count(
            crossAxisCount:2,
            children: _getList()
        );
    }
    List<Widget> _getList() {
        return _list.map((v) => _child(v)).toList();
    }

    Widget _child(String cityName) {
        return Container(
            height: 60,
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 5, right: 5),
            decoration: BoxDecoration(
                color:Colors.teal
            ),
            child: Text(cityName, style: TextStyle(color: Colors.white))
        );
    }
}
