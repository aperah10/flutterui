import 'package:flutter/material.dart';
import 'package:uiproject/ResuableCode/Buttons_C.dart';

class ActionBtn extends StatefulWidget {
  bool status;
  ActionBtn({Key? key, required this.status}) : super(key: key);

  @override
  _ActionBtnState createState() => _ActionBtnState();
}

class _ActionBtnState extends State<ActionBtn> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 45.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //  ! MULTIPEL BTN FOR SAVE
            MultipleBtn(
              btnName: 'Save',
              submitMethod: () {
                setState(() {
                  // ! STATUS MEHTOD
                  widget.status = true;
                  FocusScope.of(context).requestFocus(new FocusNode());
                });
              },
            ),
            //  ! MULTIPEL BTN FOR Cancel
            MultipleBtn(
              btnName: 'Cancel',
              submitMethod: () {
                setState(() {
                  // ! STATUS MEHTOD
                  widget.status = true;
                  FocusScope.of(context).requestFocus(new FocusNode());
                });
              },
            ),
          ],
        ));
  }
}

// ! ICON BTN F
class EditIconBtn extends StatefulWidget {
  bool status;
  EditIconBtn({Key? key, required this.status}) : super(key: key);

  @override
  _EditIconBtnState createState() => _EditIconBtnState();
}

class _EditIconBtnState extends State<EditIconBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
          // ! STATUS MEHTOD
          print('this is before status ${widget.status}');
          widget.status = false;
          print('this is status ${widget.status}');
        });
      },
    );
  }
}
