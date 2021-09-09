import 'package:flutter/material.dart';

class SinglePic extends StatelessWidget {
  const SinglePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      elevation: 5.0,
      child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Image(
              image: itemImage(),
              fit: BoxFit.cover,
            ),
          )),
    );
  }

  ImageProvider itemImage() {
    AssetImage image = AssetImage("");
    return image;
  }
}
