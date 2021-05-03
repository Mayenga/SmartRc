import 'package:flutter/material.dart';
import 'package:bcic/ui/view/screens/main/mainTab.dart';
import 'package:bcic/ui/view/screens/components/newsComponent.dart';

class profileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if(MediaQuery.of(context).orientation == Orientation.portrait){
      //portrait
      return Scaffold(
          backgroundColor: Colors.white,
          body:Padding(
            padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: [
                    Container(
                      padding: new EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Tuambie jina lako na chagua picha ya wasifu.',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.blueAccent,
                          fontFamily: 'Cinzel',
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 70),
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
                              hintText: "Jina lako...",
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                  borderSide: BorderSide.none
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 20),
                RaisedButton(
                  color:Colors.blueAccent,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,MaterialPageRoute(builder: (context) => MyApp()),);
                  },
                  child: Text(
                    'Endelea',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
      );
    }else{
      return Container(
          color: Colors.white,
          padding: new EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 30),
              Text(
                'Tuambie jina lako na chagua picha ya wasifu.',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.blueAccent,
                  fontFamily: 'Cinzel',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: new EdgeInsets.symmetric(horizontal: 10.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage: ExactAssetImage('assets/images/person.png'),
                    ),
                  ),
                  Material(
                      child: Container(
                        // width: 400.0,
                        child: new TextFormField(
                          decoration: new InputDecoration(
                            labelText: "Ingiza Jina Lako",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(25.0),
                              borderSide: new BorderSide(
                              ),
                            ),
                            //fillColor: Colors.green
                          ),
                          validator: (val) {
                            if(val.length==0) {
                              return "Email cannot be empty";
                            }else{
                              return null;
                            }
                          },
                          keyboardType: TextInputType.emailAddress,
                          style: new TextStyle(
                            fontFamily: "Poppins",
                          ),
                        ),
                      )
                  ),
                ],
              ),
              SizedBox(height: 50),
              RaisedButton(
                color:Colors.blueAccent,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,MaterialPageRoute(builder: (context) => MyApp()),);
                },
                child: Text(
                  'Endelea',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
      );
    }
  }
}