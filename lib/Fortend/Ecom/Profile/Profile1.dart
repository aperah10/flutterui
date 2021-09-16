import 'package:flutter/material.dart';
import 'package:uiproject/ResuableCode/Buttons_C.dart';
import 'package:uiproject/ResuableCode/FormF.dart';

import 'ProfWidget2.dart';

class SProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LunchState();
}

class LunchState extends State<SProfileScreen>
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
        // appBar: CustomAppBar(titlename: 'ProfilePage', createPage: ()=>HomeScreen()),
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: _status ? Text('Personal Information') : new Container(),
              ),
              Container(
                child: // ! staus for Editing
                    _status ? _getEditIcon() : new Container(),
              ),
            ],
          ),
          // NameEdit text
          FieldForms(
            inputType: TextInputType.name,
            placeholder: 'Name',
            status: _status,
          ),
          FieldForms(
              inputType: TextInputType.multiline,
              placeholder: 'Gender',
              status: _status),
          FieldForms(
              inputType: TextInputType.phone,
              placeholder: 'Phone Number',
              status: _status),
          FieldForms(
              inputType: TextInputType.emailAddress,
              placeholder: 'EmailAddress',
              status: _status),
          FieldForms(
              inputType: TextInputType.streetAddress,
              placeholder: 'Address',
              status: _status),
          FieldForms(
              inputType: TextInputType.streetAddress,
              placeholder: 'City',
              status: _status),

          // ! STAUS FOR EDITITNG
          !_status
              ? SingleBtn(
                  btnName: 'Update', submitMethod: () => SProfileScreen())
              : new Container(),
        ],
      ),
    ));
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
