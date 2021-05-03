import 'package:bcic/ui/view/screens/components/actionBtn.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:bcic/ui/view/screens/components/newsComponent.dart';

class Tab3 extends StatefulWidget {
   @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> with AutomaticKeepAliveClientMixin<Tab3> {
  List posts = [];
  @override
  void initState() {
    super.initState();
    print('initState Tab3');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF0F6),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    'SmartRc',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 32.0,
                    )
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.search),
                      iconSize: 30.0,
                      onPressed: () => print('searching'),
                    ),
                    SizedBox(width: 16.0),
                    Container(
                      width: 35.0,
                      child: IconButton(
                        icon: Icon(Icons.menu),
                        iconSize: 30.0,
                        onPressed: () => print('Moreee'),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10.0),
              child:  Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25.0,
                        backgroundImage: AssetImage('assets/images/person.png'),
                      ),
                      SizedBox(width: 10.0,),
                      Expanded(
                          child: TextField(
                            style: TextStyle(
                              color: Colors.white
                            ),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 25.0),
                                hintText: "Post kitu...",
                                filled: true,
                                fillColor: Colors.blueGrey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none
                                ),
                            ),
                          ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,),
                  Divider(
                    color: Colors.blueGrey,
                    thickness: 1.5,
                  ),
                  Row(
                    children: [
                      // actionButton(
                      //     Icons.live_tv,
                      //     "Live",
                      //     Color(0xFFF23E5C)
                      // ),
                      actionButton(
                          Icons.image,
                          "Picture",
                          Color(0xFF58C472)
                      ),
                      actionButton(
                          Icons.insert_emoticon,
                          "Activity",
                          Colors.orange
                      )
                    ],
                  )
                ],
              ),
            )
          ),
          NewsComponent(userName: "Veronicah Dominic",time: "5 ago",contentData: 'Sample contet here')
        ],
      )
    );
  }

  @override
  bool get wantKeepAlive => true;
}