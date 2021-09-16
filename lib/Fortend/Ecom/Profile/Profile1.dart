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
          ProfileFormOne(_status)
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

// ! PROFILE ONE EDITITN PAGE
class ProfileFormOne extends StatefulWidget {
  bool _status;
  ProfileFormOne(this._status, {Key? key, required}) : super(key: key);

  @override
  _ProfileFormOneState createState() => _ProfileFormOneState();
}

class _ProfileFormOneState extends State<ProfileFormOne> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20.0, left: 20.0, top: 80.0),
      child: Form(
          child: Column(children: <Widget>[
        // NameEdit text
        FieldForms(
          inputType: TextInputType.name,
          placeholder: 'Name',
          status: widget._status,
        ),
        FieldForms(
            inputType: TextInputType.multiline,
            placeholder: 'Gender',
            status: widget._status),
        FieldForms(
            inputType: TextInputType.phone,
            placeholder: 'Phone Number',
            status: widget._status),
        FieldForms(
            inputType: TextInputType.emailAddress,
            placeholder: 'EmailAddress',
            status: widget._status),
        FieldForms(
            inputType: TextInputType.streetAddress,
            placeholder: 'Address',
            status: widget._status),
        // FieldForms(
        //     inputType: TextInputType.streetAddress,
        //     placeholder: 'City',
        //     status: _status),

        // ! STAUS FOR EDITITNG
        !widget._status
            ? SingleBtn(btnName: 'Update', submitMethod: () => SProfileScreen())
            : new Container(),
      ])),
    );
  }
}
