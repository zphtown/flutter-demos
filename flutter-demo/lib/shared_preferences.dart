import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
    runApp(MaterialApp(
        home: Scaffold(
            body: StoragePage()
        ),
    ));
}

class StoragePage extends StatefulWidget {
  @override
  _StoragePageState createState() => _StoragePageState();
}

class _StoragePageState extends State<StoragePage> {
  @override
  var counter = 0;
  var key = 'counter667';
  @override
  void initState() {
    super.initState();
    _getCounter();
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:  CrossAxisAlignment.center,
          children: <Widget>[
              RaisedButton(
                  onPressed: () => _incrementCounter(),
                  child: Text('counter=$counter')
              ),
              RaisedButton(
                  onPressed: () => _removeCounter(),
                  child: Text('_removeCounter')
              ),
          ],
    );
  }

  _getCounter() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      var c = (prefs.getInt(key) ?? 0);
      setState(() {
          counter = c;
      });
  }
  _incrementCounter() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      int c = (prefs.getInt(key) ?? 0) + 1;
      print('Pressed $c times.');
      await prefs.setInt(key, c);
      setState(() {
          counter = c;
      });
  }
  _removeCounter() async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove(key);
      setState(() {
          counter = 0;
      });
  }
}


