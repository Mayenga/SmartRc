import 'package:flutter/material.dart';

import 'screens/tab1.dart';
import 'screens/tab2.dart';
import 'screens/tab3.dart';
import 'screens/tab4.dart';
import 'screens/tab5.dart';

class TabContainerIndexedStack extends StatefulWidget {
  TabContainerIndexedStack({Key key}) : super(key: key);

  @override
  _TabContainerIndexedStackState createState() =>
      _TabContainerIndexedStackState();
}

class _TabContainerIndexedStackState extends State<TabContainerIndexedStack> {
  int tabIndex = 0;
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

//  @override
//  bool get wantKeepAlive =>
//      true; //by default it will be null, change it to true.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.yellow,
      home: Scaffold(
        body: IndexedStack(index: tabIndex, children: listScreens),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabIndex,
            onTap: (int index) {
              setState(() {
                tabIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Tab1'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.report_problem),
                title: Text('Tab2'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Tab3'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Tab4'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Tab5'),
              ),
            ]),
        backgroundColor: Colors.grey[100],//Theme.of(context).primaryColor,
      ),
    );
  }
}