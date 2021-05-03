import 'package:flutter/material.dart';
import 'package:bcic/ui/view/screens/signup/PhoneVerifyScreen.dart';
import 'package:bcic/backend.dart';

class SignUpScreen extends StatelessWidget {
  Backend validate = new Backend();
  String lang = "swahili";
  String titleText;
  String numberDetailsText;
  String endeleaButtonText;
  String labelText;

  @override
  Widget build(BuildContext context) {
    if(lang == 'swahili'){
      titleText = 'Ingiza namba ya simu';
      numberDetailsText = 'SmartRc itatumia namba yako kukutambua na kukuweka karibu zaidi na kanisa. Tutakutumia SMS ili kuhakiki namba yako.';
      endeleaButtonText = 'Endelea';
      labelText = "Mfano. 0715881971";
    }else{
      titleText = 'Please enter phone number';
      numberDetailsText = 'SmartRc will use your number to get to know you and to bring you closer to the church. We will send you sms to verify your number.';
      endeleaButtonText = 'Continue';
      labelText = "Example. 0715881971";
    }
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
            titleText,
          style: TextStyle(
              color: Colors.blueAccent,
              fontFamily: 'Cinzel',
              fontSize: 19.0,
              // height: 1.3
          ),
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
                    padding: new EdgeInsets.symmetric(horizontal: 20.0),
                    child:Text(
                      numberDetailsText,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontFamily: 'RobotoCondensed',
                          height: 1.3),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    padding: new EdgeInsets.symmetric(horizontal: 20.0),
                    child:TextFormField(
                      decoration: new InputDecoration(
                        labelText: labelText,
                        fillColor: Colors.white,
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(15.0),
                        ),
                        //fillColor: Colors.green
                      ),
                      validator: validate.validateMobile,
                      onSaved: (String val) {
                        // _mobile = val;
                      },
                      keyboardType: TextInputType.phone,
                      style: new TextStyle(
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            RaisedButton(
              color:Colors.blueAccent,
              child: Text(
                endeleaButtonText,
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                ),
              ),
                onPressed: (){
                  validate.validatePhoneButton();
                  // AlertDialog dialog = new AlertDialog(
                  //   content: new Container(
                  //     width: 260.0,
                  //     height: 230.0,
                  //     decoration: new BoxDecoration(
                  //       shape: BoxShape.rectangle,
                  //       color: const Color(0xFFFFFF),
                  //       borderRadius: new BorderRadius.all(new Radius.circular(32.0)),
                  //     ),
                  //     child: new Column(
                  //       crossAxisAlignment: CrossAxisAlignment.stretch,
                  //       children: <Widget>[
                  //       // dialog top
                  //       new Expanded(
                  //       child: new Row(
                  //       children: <Widget>[
                  //         new Container(
                  //           // padding: new EdgeInsets.all(10.0),
                  //           decoration: new BoxDecoration(
                  //             color: Colors.white,
                  //           ),
                  //           child: Column(
                  //               children:[
                  //                 new Text(
                  //                   "Tunakwenda kuhakiki namba yako :",
                  //                   style: TextStyle(
                  //                     color: Colors.black,
                  //                     fontSize: 13.0,
                  //                     fontFamily: 'RobotoCondensed',
                  //                   ),
                  //                   textAlign: TextAlign.justify,
                  //                 ),
                  //                 new Text(
                  //                   "0715881971",
                  //                   style: TextStyle(
                  //                     color: Colors.green,
                  //                     fontSize: 15.0,
                  //                     fontFamily: 'RobotoCondensed',
                  //                   ),
                  //                   textAlign: TextAlign.start,
                  //                 ),
                  //               ]
                  //           )
                  //         ),
                  //       ],
                  //       ),
                  //       ),
                  //
                  //         // dialog centre
                  //         new Expanded(
                  //         child: new Column(
                  //           children: [
                  //             new Text(
                  //               "Je iko sahihi, au utahitaji kufanya ",
                  //               style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontSize: 13.0,
                  //                 fontFamily: 'RobotoCondensed',
                  //               ),
                  //               textAlign: TextAlign.start,
                  //             ),
                  //             new Text(
                  //               "mabadiliko ya namba yako? ",
                  //               style: TextStyle(
                  //                 color: Colors.black,
                  //                 fontSize: 13.0,
                  //                 fontFamily: 'RaleWay',
                  //               ),
                  //               textAlign: TextAlign.center,
                  //             ),
                  //           ]
                  //         ),
                  //         flex: 2,
                  //         ),
                  //         Container(
                  //           child: Row(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children:[
                  //               Expanded(
                  //                 child: FlatButton(
                  //                   color: Colors.transparent,
                  //                   splashColor: Colors.black26,
                  //                   child: Text(
                  //                     'REKEBISHA',
                  //                     style: TextStyle(
                  //                         color: Colors.lightBlue,
                  //                         fontSize: 12),
                  //                   ),
                  //                   onPressed: () {
                  //                     Navigator.pushReplacement(
                  //                       context,MaterialPageRoute(builder: (context) => SignUpScreen()),);
                  //                   },),
                  //             ),
                  //               Expanded(
                  //                 child: FlatButton(
                  //                   color: Colors.transparent,
                  //                   splashColor: Colors.black26,
                  //                   onPressed: () {
                  //                     Navigator.pushReplacement(
                  //                       context,MaterialPageRoute(builder: (context) => PhoneVerifyScreen()),);
                  //                   },
                  //                   child: Text(
                  //                     'IPO SAWA',
                  //                     style: TextStyle(
                  //                         color: Colors.lightBlue,
                  //                         fontSize: 12),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  // ),
                  // );
                  //
                  // showDialog(context: context, child: dialog);

                  // Navigator.pushReplacement(
                  //   context,MaterialPageRoute(builder: (context) => RegistrationScreen()),);
                },
            ),
          ],
        ),
      ),
    );
  }
}