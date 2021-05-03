import 'package:flutter/material.dart';

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> with AutomaticKeepAliveClientMixin<Tab2> {
  @override
  void initState() {
    super.initState();
    print('initState Tab2');
  }

  @override
  Widget build(BuildContext context) {
    print('build Tab2');
    return Scaffold(
      appBar: AppBar(
        title: Text('Kifatilizi',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontFamily: 'Cinzel',
                height: 2.0
            )
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.more_vert),
            tooltip: 'Show Snackbar',
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Nini kinaendelea kanisani sasaivi',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}