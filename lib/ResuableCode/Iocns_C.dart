import 'package:flutter/material.dart';

class IconBtn extends StatelessWidget {
  IconData iconD;
  IconBtn({Key? key, required this.iconD}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
        height: 18.0,
        width: 18.0,
        child: new IconButton(
          padding: new EdgeInsets.all(0.0),
          color: Colors.deepOrange,
          icon: new Icon(iconD, size: 18.0),
          onPressed: () {},
        ));
  }
}
