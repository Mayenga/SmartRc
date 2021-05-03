import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:bcic/ui/view/screens/signup/profileScreen.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegisterState createState() => new _RegisterState();
}

class _RegisterState extends State<RegistrationScreen> {
  String _myActivity1;
  String _myActivityResult1;
  final formKey1 = new GlobalKey<FormState>();

  String _myActivity2;
  String _myActivityResult2;
  final formKey2 = new GlobalKey<FormState>();

  String _myActivity3;
  String _myActivityResult3;
  final formKey3 = new GlobalKey<FormState>();

  String _myActivity4;
  String _myActivityResult4;
  final formKey4 = new GlobalKey<FormState>();

  String _myActivity5;
  String _myActivityResult5;
  final formKey5 = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _myActivity1 = '';
    _myActivityResult1 = '';
    _myActivity2 = '';
    _myActivityResult2 = '';
    _myActivity3 = '';
    _myActivityResult3 = '';
    _myActivity4 = '';
    _myActivityResult4 = '';
    _myActivity5 = '';
    _myActivityResult5 = '';
  }

  _saveForm() {
    var form = formKey1.currentState;
    var form2 = formKey2.currentState;
    var form3 = formKey3.currentState;
    var form4 = formKey4.currentState;
    var form5 = formKey5.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        _myActivityResult1 = _myActivity1;
        _myActivityResult2 = _myActivity2;
        _myActivityResult3 = _myActivity3;
        _myActivityResult4 = _myActivity4;
        _myActivityResult5 = _myActivity5;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Jisajili',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontFamily: 'Cinzel',
                          fontSize: 19.0,
                          height: 1.3),
                    ),
                  ),
                  Column(
                    children: [
                      DropDownFormField(
                          titleText: 'Jimbo',
                          hintText: 'Tafadhari Chagua Jimbo',
                          value: _myActivity1,
                          onSaved: (value) {
                            setState(() {
                              _myActivity1 = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myActivity1 = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Dar Es Salaam",
                              "value": "Daresalaam",
                            },
                            {
                              "display": "Pwani",
                              "value": "Pwani",
                            },
                            {
                              "display": "Iringa",
                              "value": "Iringa",
                            },
                            {
                              "display": "Same",
                              "value": "same",
                            }
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                      DropDownFormField(
                          titleText: 'Dekania',
                          hintText: 'Tafadhari Chagua Dekania',
                          value: _myActivity2,
                          onSaved: (value) {
                            setState(() {
                              _myActivity2 = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myActivity2 = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Mbagala",
                              "value": "mbagala",
                            },
                            {
                              "display": "Kigamboni",
                              "value": "kigamboni",
                            },
                            {
                              "display": "Kawe",
                              "value": "kawe",
                            }
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                       DropDownFormField(
                          titleText: 'Parokia',
                          hintText: 'Tafadhari Chagua Parokia',
                          value: _myActivity3,
                          onSaved: (value) {
                            setState(() {
                              _myActivity3 = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myActivity3 = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Parokia ya Kijichi",
                              "value": "kijichi",
                            },
                            {
                              "display": "Mt Bakitha",
                              "value": "bakita",
                            },
                            {
                              "display": "Maria Mama Wa Mungu",
                              "value": "maria",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                       DropDownFormField(
                          titleText: 'Mtaa',
                          hintText: 'Tafadhari Chagua Mtaa',
                          value: _myActivity4,
                          onSaved: (value) {
                            setState(() {
                              _myActivity4 = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myActivity4 = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Jordan",
                              "value": "jordan",
                            },
                            {
                              "display": "Kristo Mfalme",
                              "value": "mfalme",
                            },
                            {
                              "display": "Antyokya",
                              "value": "antokya",
                            },
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                       DropDownFormField(
                          titleText: 'Jumuiya',
                          hintText: 'Tafadhari Chagua Jumuiya',
                          value: _myActivity5,
                          onSaved: (value) {
                            setState(() {
                              _myActivity5 = value;
                            });
                          },
                          onChanged: (value) {
                            setState(() {
                              _myActivity5 = value;
                            });
                          },
                          dataSource: [
                            {
                              "display": "Mt Kizito",
                              "value": "kizito",
                            },
                            {
                              "display": "Mt Petro",
                              "value": "petro",
                            },
                            {
                              "display": "Mt Magdalena",
                              "value": "magdalena",
                            },
                            {
                              "display": "Mt Theresa",
                              "value": "theresa",
                            }
                          ],
                          textField: 'display',
                          valueField: 'value',
                        ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: RaisedButton(
                          color:Colors.blueAccent,
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,MaterialPageRoute(builder: (context) => profileScreen()),);
                          },
                          child: Text(
                            'Sajili',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          'Ruka kwa sasa',
                          style: TextStyle(
                              color: Colors.blueAccent,
                              height: 1.3),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  }
}