import 'package:flutter/material.dart';
import 'package:uiproject/Fortend/Widget/Appbar/CusAppbar.dart';
import 'package:uiproject/ResuableCode/Aviatar_Pic.dart';
import 'package:uiproject/ResuableCode/Buttons_C.dart';

class ProfileEditScr extends StatelessWidget {
  ProfileEditScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titlename: 'Profile Page '),
      body: SafeArea(
        bottom: false,
        left: true,
        right: true,
        top: false,
        child: EditBody(),
      ),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                              // ! EDIT PROFILE BODY                                    */
/* -------------------------------------------------------------------------- */

class EditBody extends StatefulWidget {
  EditBody({Key? key}) : super(key: key);

  @override
  _EditBodyState createState() => _EditBodyState();
}

class _EditBodyState extends State<EditBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              //  !  staring list item
              Text(
                "Edit Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),

              // ! 2. AVATOR CIRCLE FOR PIC

              CusAvaitar(),

              // ! Avitar Pic,

              SizedBox(
                height: 35,
              ),

              //  ! FORM FILED WIDGET
              EditBodyFormF(
                labelText: 'Name',
                placeholder: 'Enter the Name',
              ),
              EditBodyFormF(
                labelText: 'Email',
                placeholder: 'Enter the Email',
              ),
              EditBodyFormF(
                labelText: 'Gender',
                placeholder: 'Enter the Gender',
              ),

              // ! END FORM FIELD PAGE

              // orc BUTTON
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                MultipleBtn(btnName: 'Save'),
                MultipleBtn(btnName: 'Cancel')
              ])
            ],
          ),
        ));
  }
}

/* -------------------------------------------------------------------------- */
/*                      // ! FORM FIELD FOR PROFILE PAGE                      */
/* -------------------------------------------------------------------------- */
class EditBodyFormF extends StatelessWidget {
  String labelText;
  String placeholder;

  EditBodyFormF({
    Key? key,
    required this.labelText,
    required this.placeholder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 15.0),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: labelText,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.black,
            )),
      ),
    );
  }
}
