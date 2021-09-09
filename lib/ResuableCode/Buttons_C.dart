import 'package:flutter/material.dart';

class SingleBtn extends StatelessWidget {
  final String btnName;
  // final Widget Function() createPage;
  dynamic submitMethod;
  SingleBtn({Key? key, required this.btnName, this.submitMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 3, left: 3),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border(
              bottom: BorderSide(color: Colors.black),
              top: BorderSide(color: Colors.black),
              left: BorderSide(color: Colors.black),
              right: BorderSide(color: Colors.black),
            )),
        child: MaterialButton(
          minWidth: double.infinity,
          height: 60,
          onPressed: submitMethod,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
          child: Ink(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [new Color(0xff374ABE), new Color(0xff64B6FF)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: 300.0,
                  minHeight: 40.0,
                  maxHeight: 55.0), // min sizes for Material buttons
              alignment: Alignment.center,
              child: Text(
                btnName,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ));
  }
}

class MultipleBtn extends StatelessWidget {
  String btnName;
  dynamic submitMethod;

  MultipleBtn({
    Key? key,
    required this.btnName,
    this.submitMethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        color: btnName == 'Buy' ? Colors.deepOrange : Colors.black54,
        elevation: 0,
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.all(15.0),
          child: Text(
            btnName,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
