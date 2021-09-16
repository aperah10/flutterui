import 'package:flutter/material.dart';

import 'package:uiproject/Fortend/Form/formWidget.dart';
import 'package:uiproject/Fortend/Widget/Appbar/CusAppbar.dart';
import 'package:uiproject/ResuableCode/Buttons_C.dart';

class CreateAddressScreen extends StatefulWidget {
  @override
  _CreateAddressScreenState createState() => _CreateAddressScreenState();
}

class _CreateAddressScreenState extends State<CreateAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        titlename: 'Add Address',
      ),
      body: SafeArea(
        bottom: true,
        top: true,
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // ! Name FieldF
            FieldF(placeholder: 'Name', inputType: TextInputType.name),
            // ! PHONE field
            FieldF(placeholder: 'Phone', inputType: TextInputType.phone),

            // ! Address field
            FieldF(
                placeholder: 'Address', inputType: TextInputType.streetAddress),

            // ! City field
            FieldF(inputType: TextInputType.streetAddress, placeholder: 'City'),

            // ! POSTTAL field
            FieldF(
                inputType: TextInputType.multiline, placeholder: 'PostalCode'),

            // Login Button
            Center(
                child: SingleBtn(
              btnName: 'Address',
            ))
          ],
        )),
      ),
    );
  }
}
