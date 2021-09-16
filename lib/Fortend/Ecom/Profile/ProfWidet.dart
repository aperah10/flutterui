import 'package:flutter/material.dart';

import 'ProfWidget2.dart';
import 'ProfWidget3.dart';

class Prof1 extends StatelessWidget {
  Prof1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      color: Colors.white,
      child: new Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20.0),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 22.0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.0),
                    child: new Text('PROFILE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'sans-serif-light',
                            color: Colors.black)),
                  )
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: new Stack(fit: StackFit.loose, children: <Widget>[
              new Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                      width: 140.0,
                      height: 140.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          image: new ExactAssetImage('images/app_logo.png'),
                          fit: BoxFit.cover,
                        ),
                      )),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(top: 90.0, right: 100.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 25.0,
                        child: new Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
            ]),
          )
        ],
      ),
    );
  }
}

// ! PROFILE 2
class Prof2 extends StatefulWidget {
  bool status;
  Prof2({Key? key, required this.status}) : super(key: key);

  @override
  _Prof2State createState() => _Prof2State();
}

class _Prof2State extends State<Prof2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffFFFFFF),
      child: Padding(
        padding: EdgeInsets.only(bottom: 25.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
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
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    new Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // ! staus for Editing
                        widget.status
                            ? EditIconBtn(status: widget.status)
                            : new Container(),
                      ],
                    )
                  ],
                )),

            //  ! START FORM FORM FIELD
            FieldName(
              title: 'Name',
            ),
            FieldForms(placeholder: 'Enter the Name', status: widget.status),
            FieldName(title: 'Email Id'),
            FieldForms(placeholder: 'Enter Emaild Id ', status: widget.status),
            FieldName(title: 'Mobile'),
            FieldForms(
                placeholder: "Enter Mobile Number", status: widget.status),
            // ! END FIELDS
            Padding(
                padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    PinCodeName(title: 'Pin Code'),
                    PinCodeName(title: 'State'),
                  ],
                )),
            FullPinCode(status: widget.status),
            // ! STAUS FOR EDITITNG
            !widget.status ? ActionBtn(status: widget.status) : new Container(),
          ],
        ),
      ),
    );
  }

  // Widget _getEditIcon() {
  //   return new GestureDetector(
  //     child: new CircleAvatar(
  //       backgroundColor: Colors.red,
  //       radius: 14.0,
  //       child: new Icon(
  //         Icons.edit,
  //         color: Colors.white,
  //         size: 16.0,
  //       ),
  //     ),
  //     onTap: () {
  //       setState(() {
  //         print('this is status before $_status');
  //         _status = false;
  //         print('this is status  $_status');
  //       });
  //     },
  //   );
  // }
}
