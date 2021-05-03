import 'package:flutter/material.dart';

import 'screens/tab1.dart';
import 'screens/tab2.dart';
import 'screens/tab3.dart';
import 'screens/tab4.dart';
import 'screens/tab5.dart';

class TabContainerDefault extends StatefulWidget {
  TabContainerDefault({Key key}) : super(key: key);

  @override
  _TabContainerDefaultState createState() => _TabContainerDefaultState();
}

class _TabContainerDefaultState extends State<TabContainerDefault> {
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Tab1(),
      Tab2(),
      Tab3(),
      Tab4(),
      Tab5(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.yellow,
      home: DefaultTabController(
        length: 5,
        initialIndex: 2,
        child: Scaffold(
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(), children: listScreens),
          bottomNavigationBar: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                icon: Icon(Icons.track_changes),
              ),
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                icon: Icon(Icons.library_books),
              ),
              Tab(
                icon: Icon(Icons.timer),
              ),
            ],
          ),
          backgroundColor: Colors.lightBlue[900],//Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}