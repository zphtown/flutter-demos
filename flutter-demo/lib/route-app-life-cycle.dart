import 'package:flutter/material.dart';

 class AppLifeCycle extends StatefulWidget {
   const AppLifeCycle({ Key key }) : super(key: key);

   @override
   _AppLifeCycleState createState() => _AppLifeCycleState();
 }

 class _AppLifeCycleState extends State<AppLifeCycle> with WidgetsBindingObserver {
   @override
   void initState() {
     super.initState();
     WidgetsBinding.instance.addObserver(this);
   }

   @override
   void dispose() {
     WidgetsBinding.instance.removeObserver(this);
     super.dispose();
   }

   double _lastTextScaleFactor;

   @override
   void didChangeTextScaleFactor() {
     setState(() { _lastTextScaleFactor = WidgetsBinding.instance.window.textScaleFactor; });
   }

   @override
   Widget build(BuildContext context) {
     return Text('Current scale factor: $_lastTextScaleFactor');
   }
   @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    print(state);
    super.didChangeAppLifecycleState(state);
  }
 }
