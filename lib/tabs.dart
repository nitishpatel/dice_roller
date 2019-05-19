import 'package:flutter/material.dart';
import 'home.dart';

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          centerTitle: true,
          title: new Text(
            "Roller",
          ),
        ),
        bottomNavigationBar: new Material(
            color: Color(0xFFffd32a),
            child: new TabBar(controller: controller, tabs: <Tab>[
              new Tab(icon: new Icon(Icons.dashboard)),
              new Tab(icon: new Icon(Icons.control_point_duplicate)),
            ])),
        body: new TabBarView(
            controller: controller, children: <Widget>[Home(), SecondHome()]));
  }
}
