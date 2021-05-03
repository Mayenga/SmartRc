import 'package:flutter/material.dart';

class Tab5 extends StatefulWidget {
  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab5> with AutomaticKeepAliveClientMixin<Tab5> {
  @override
  void initState() {
    super.initState();
    print('initState Tab3');
  }

  @override
  Widget build(BuildContext context) {
    print('build Tab3');
    return Scaffold(
      appBar: AppBar(
        title: Text('Ratiba',
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
          'Ratiba',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}