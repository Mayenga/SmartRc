import 'package:flutter/material.dart';
import 'package:bcic/ui/view/screens/signup/RegistrationScreen.dart';
import 'package:flutter_verification_code_input/flutter_verification_code_input.dart';

class PhoneVerifyScreen extends StatelessWidget {
  String lang = 'swahili';
  String hakiki;
  String codeDetailsText;

  @override
  Widget build(BuildContext context) {
    if(lang == 'swahili'){
      hakiki = "Hakiki";
      codeDetailsText = 'Ingiza code zimetumwa kwenye namba 0715881971. Namba sio sahihi?';
    }else{
      hakiki = "Verify";
      codeDetailsText = "Enter code sent to 0715881971. Wrong number?";
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          hakiki+'0715881971',
          style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: 'Cinzel',
              fontSize: 19.0,
              height: 1.3),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(//left: 40.0, right: 40.0,

              child:Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50),
                  Container(
                    padding: new EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      codeDetailsText,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black87,
                          letterSpacing: 1.2,
                          fontFamily: 'RobotoCondensed',
                          fontSize: 16.0,
                          height: 1.3),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    padding: new EdgeInsets.symmetric(horizontal: 20.0),
                      child: VerificationCodeInput(
                        keyboardType: TextInputType.number,
                        length: 4,
                        autofocus: true,
                        onCompleted: (String value) {
                          Navigator.pushReplacement(
                            context,MaterialPageRoute(builder: (context) => RegistrationScreen()),);
                        },
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}