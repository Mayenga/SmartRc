import 'package:flutter/material.dart';

class Backend extends StatelessWidget {
  //Inputs verification starts
  //validate mobile phone number starts
  String validateMobile(String value) {
    if (value.length != 10)
      print('Mobile Number must be of 10 digit');
    else
      return null;
  }

  validatePhoneButton(){
    print('yees');
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}