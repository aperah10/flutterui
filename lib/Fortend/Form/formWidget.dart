import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class FieldF extends StatefulWidget {
  bool obscureTxt;
  final TextInputType? inputType;
  final String? placeholder;
  String? labelText;
  final TextEditingController? controller;
  String? Function(String?)? formValidator;
  bool brd;
  FieldF(
      {Key? key,
      this.inputType,
      this.placeholder,
      this.controller,
      this.formValidator,
      this.labelText,
      this.brd = true,
      this.obscureTxt = false})
      : super(key: key);

  @override
  _FieldFState createState() => _FieldFState();
}

class _FieldFState extends State<FieldF> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: double.infinity,
        margin: EdgeInsets.only(),
        child: TextFormField(
          obscureText: widget.obscureTxt,
          controller: widget.controller,
          keyboardType: widget.inputType,
          minLines: 1,
          validator: widget.formValidator,
          autofocus: false,
          decoration: InputDecoration(
              labelText: widget.labelText,
              hintText: widget.placeholder,
              // labelText: "Name",     // Set text upper animation
              border: widget.brd ? OutlineInputBorder() : null,
              suffixIcon: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: widget.placeholder == 'Password' &&
                        widget.inputType == TextInputType.visiblePassword
                    ? IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            widget.obscureTxt = !widget.obscureTxt;
                          });
                        },
                        icon: Icon(
                          widget.obscureTxt
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                      )
                    : null,
              )),
        ),
      ),
    );
  }
}

// ===============================================================
// SUBMIT BUTTONS
class SubmitButton extends StatelessWidget {
  final String btnName;
  // final Widget Function() createPage;
  dynamic submitMethod;
  SubmitButton({Key? key, required this.btnName, required this.submitMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: EdgeInsets.only(top: 30.0, bottom: 35.0),
        child: MaterialButton(
      onPressed: submitMethod,
      //     () {
      //   submitMethod();
      //   // Navigator.of(context)
      //   //     .push(MaterialPageRoute(builder: (context) => createPage()));
      // }, // When Click on Button goto Login Screen

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
      // padding: const EdgeInsets.all(0.0),
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

// =========================================================
// EXTRA BUTTONS FOR ROW SIGNUP AND
class ExtraButton extends StatelessWidget {
  final String btnName;
  dynamic createPage;
  ExtraButton({Key? key, required this.btnName, this.createPage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: EdgeInsets.only(bottom: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account? "),
                GestureDetector(
                  child: Text(
                    btnName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onTap: () {
                    // Navigator.of(context).push(
                    //     MaterialPageRoute(builder: (context) => createPage()));
                    Navigator.of(context).pushReplacementNamed(createPage);
                  },
                )
              ],
            )));
  }
}
