import 'package:flutter/material.dart';

class LifeCyclePage extends StatefulWidget {
  @override
  _LifeCyclePageState createState() => _LifeCyclePageState();
}

class _LifeCyclePageState extends State<LifeCyclePage> {
  int count = 0;
  @override
  void initState() {
    print('initState');
    super.initState();
  }
  @override
  void didChangeDependencies() {
    print('didChangeDependencies');
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
        appBar: AppBar(title: Text('life-cycle')),
        body: Container(
            child: RaisedButton(
                onPressed: _click,
                child: Text('change str $count')
            )
        )
    );
  }
  _click() {
      setState(() {
        ++count;
      });
  }
  @override
  void didUpdateWidget(LifeCyclePage oldWidget) {
    print('didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }
  @override
  void deactivate() {
    print('override');
    super.deactivate();
  }
  @override
  void dispose() {
    print('dispose');
    super.dispose();
  }
}
