import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:uiproject/Fortend/Ecom/Profile/ProfWidet.dart';
import 'package:uiproject/Fortend/Ecom/Profile/ProfWidget2.dart';
import 'package:uiproject/Fortend/Ecom/Profile/ProfWidget3.dart';

// ! PROFILE PAGE
// class ESProfileScr extends StatelessWidget {
//   const ESProfileScr({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ;
//   }
// }

class ESprofileOne extends StatefulWidget {
  ESprofileOne({Key? key}) : super(key: key);

  @override
  _ESprofileOneState createState() => _ESprofileOneState();
}

class _ESprofileOneState extends State<ESprofileOne>
    with SingleTickerProviderStateMixin {
// ! mehtod
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

// ! end mehtod
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Column(children: <Widget>[
              // ! 1. PROFILE ONE
              // Prof1(status: status),
              _status ? _getEditIcon() : new Container(),
              // ! 2.Profile 2
              Container(
                color: Color(0xffFFFFFF),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  new Text(
                                    'Parsonal Information',
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  // ! staus for Editing
                                  _status ? _getEditIcon() : new Container(),
                                ],
                              )
                            ],
                          )),

                      //  ! START FORM FORM FIELD
                      FieldName(
                        title: 'Name',
                      ),
                      FieldForms(
                          placeholder: 'Enter the Name', status: _status),
                      FieldName(title: 'Email Id'),
                      FieldForms(
                          placeholder: 'Enter Emaild Id ', status: _status),
                      FieldName(title: 'Mobile'),
                      FieldForms(
                          placeholder: "Enter Mobile Number", status: _status),
                      // ! END FIELDS
                      Padding(
                          padding: EdgeInsets.only(
                              left: 25.0, right: 25.0, top: 25.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              PinCodeName(title: 'Pin Code'),
                              PinCodeName(title: 'State'),
                            ],
                          )),
                      FullPinCode(status: _status),
                      // ! STAUS FOR EDITITNG
                      !_status ? ActionBtn(status: _status) : new Container(),
                    ],
                  ),
                ),
              )
            ])
          ],
        ),
      )),
    );
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    myFocusNode.dispose();
    super.dispose();
  }

  Widget _getEditIcon() {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: new Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}
