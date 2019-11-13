import 'package:flutter/material.dart';
var _title = 'ExpansionTile demo';
void main() => runApp(
MaterialApp(
    title: _title,
    home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: ExpansionTilePage()
    )
  )
);



class ExpansionTilePage extends StatelessWidget {
  Map _list = {
      '广东': [
          '广州',
          '深圳',
          '韶关',
          '东莞',
          '惠州',
          '揭阳',
          '湛江',
      ]
  };
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: _getList()
    );
  }
  List<Widget> _getList() {
      List<Widget> widgets = [];
      _list.keys.forEach((k){
          widgets.add(_item(k, _list[k]));
      });
//      _list.forEach((k,v) {
//          widgets.add(_item(k, v));
//      });
      return widgets;
  }
  Widget _item(String proviceName, List citys) {
      return ExpansionTile(
          title: Text(proviceName),
          children: citys.map((v) => _child(v)).toList()
      );
  }
  Widget _child(String cityName) {
      return Container(
          height: 60,
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
              color:Colors.teal
          ),
          child: Text(cityName, style: TextStyle(color: Colors.white))
      );
  }
}
