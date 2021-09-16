import 'package:flutter/material.dart';

class FieldForms extends StatelessWidget {
  String placeholder;
  bool status;
  TextInputType? inputType;
  FieldForms(
      {Key? key,
      required this.placeholder,
      required this.status,
      this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Flexible(
              child: new TextField(
                decoration: InputDecoration(hintText: placeholder),
                // ! STATUS MEHTOD
                enabled: !status,
              ),
            ),
          ],
        ));
  }
}

// ! FIELD NAME
class FieldName extends StatelessWidget {
  String title;

  FieldName({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new Text(
                  title,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ));
  }
}

// ! FORM FILED PINCODE
class PinCodeField extends StatelessWidget {
  String placeholder;
  bool status;
  PinCodeField({Key? key, required this.placeholder, required this.status})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: EdgeInsets.only(right: 10.0),
        child: new TextField(
          decoration: InputDecoration(hintText: placeholder),
          // ! STATUS MEHTOD
          enabled: !status,
        ),
      ),
      flex: 2,
    );
  }
}

// ! PINCODE NAME
class PinCodeName extends StatelessWidget {
  String title;
  PinCodeName({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: new Text(
          title,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        ),
      ),
      flex: 2,
    );
  }
}

// ! fullForm Pincode
class FullPinCode extends StatelessWidget {
  bool status;
  FullPinCode({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 2.0),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            PinCodeField(
              placeholder: "Enter Pin Code",
              status: status,
            ),
            PinCodeField(
              placeholder: "Enter  State",
              status: status,
            )
          ],
        ));
  }
}
