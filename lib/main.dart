import 'package:flutter/material.dart';
import 'home.dart';
import 'tabs.dart';

main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice',
      home: MyTabs(),
      theme: ThemeData(
        primaryColor: Color(0xFFffd32a),
        accentColor: Color(0xFFff5e57,),
      ),
    );
  }
}