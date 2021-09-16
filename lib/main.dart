import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'Fortend/Ecom/Product/product_detail2.dart';
import 'Fortend/Widget/Drawer/Dras.dart';
import 'MyApp/B_Part/Product/Product_details.dart';
import 'ResponsiveFile/SizeConf.dart';
import 'ResponsiveFile/StylingC.dart';

void main() {
  // runApp(MyApp());
  runApp(ResponsiveC());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constraints) {
//       return OrientationBuilder(builder: (context, orientation) {
//         print('THIS IS CONSTRAINSTS:-  $constraints');
//         print('THIS IS ORIENTAITON :-  $orientation');
// // ! CUSTOM RESPONSIVE DATA
//         ScrSizeConfig().init(constraints, orientation);

//         return MaterialApp(
//           title: 'Only Ui Pages ',
//           theme: CusTheme.lightTheme,
//           home: MyDrawerList(),
//           debugShowCheckedModeBanner: false,
//         );
//       });
//     });
//   }
// }

// ! RESPONSIVE FOR CHECK
class ResponsiveC extends StatelessWidget {
  const ResponsiveC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          defaultScale: true,
          minWidth: 480,
          // defaultName: DESKTOP,
          breakpoints: [
            ResponsiveBreakpoint.autoScale(480, name: MOBILE),
            ResponsiveBreakpoint.resize(600, name: MOBILE),
            ResponsiveBreakpoint.resize(850, name: TABLET),
            ResponsiveBreakpoint.resize(1080, name: DESKTOP),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      title: 'Only Ui Pages ',
      // theme: CusTheme.lightTheme,
      home: MyDrawerList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
