import 'package:flutter/material.dart';
import 'package:bcic/ui/base_widget.dart';
import 'package:bcic/ui/view/screens/signup/signUp.dart';

class HomeView extends StatelessWidget {
  HomeView({Key key}) : super(key: key);
  String lang = 'english';
  String welcomeText;
  String seraText;
  String kubaliButton;
  @override
  Widget build(BuildContext context) {
    if(lang == 'swahili'){
      welcomeText = 'Karibu ';
      kubaliButton = 'Accept And Continue';
      seraText = "Soma sera ya faragha kisha bonyeza 'Kubali na Endelea' kukubaliana na masharti ya huduma";
    }else{
      welcomeText = 'Welcome ';
      seraText = "Read our Privance police then click 'Accept And Continue' to accept rules of seervice";
      kubaliButton = 'Accept And Continue';
    }
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(color: Colors.blue[300]),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          welcomeText,
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontFamily: 'Cinzel',
                              height: 2.0)
                      ),
                      Text(
                          'SmartRC',
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.white,
                              fontFamily: 'Pacifico',
                              height: 2.0)
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/1.png',
                    fit: BoxFit.fitWidth,
                    width: 220.0,
                  ),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(
                          seraText,
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              color: Colors.white,
                              letterSpacing: 1.2,
                              fontSize: 16.0,
                              fontFamily: 'RobotoCondensed',
                              height: 1.3),
                              textAlign: TextAlign.center,
                        ),
                        RaisedButton(
                          onPressed: (){
                            Navigator.pushReplacement(
                              context,MaterialPageRoute(builder: (context) => SignUpScreen()),);
                          },
                          child: Text(
                            kubaliButton,
                            style: TextStyle(fontSize: 15.0),),
                        ),
                      ],
                    ),
                  ),
                ]
            ),
          ),
        );
      },
    );
  }
}