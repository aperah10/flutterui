import 'package:flutter/material.dart';
import 'package:uiproject/APage/Address/create_address_screen.dart';
import 'package:uiproject/APage/Order/Order2.dart';
import 'package:uiproject/APage/Order/Order_Scr.dart';
import 'package:uiproject/APage/Product/prod_det.dart';
import 'package:uiproject/Fortend/Ecom/Auth/LoginPage.dart';
import 'package:uiproject/Fortend/Ecom/Profile/Acc_Profile.dart';
import 'package:uiproject/Fortend/Ecom/Profile/EditProfile.dart';
import 'package:uiproject/Fortend/Ecom/Profile/Profile1.dart';
import 'package:uiproject/Fortend/Ecom/Profile/ShowProfile.dart';

import 'package:uiproject/Fortend/Ecom/Profile/ShowProfile2.dart';
import 'package:uiproject/ResuableCode/Aviatar_Pic.dart';

class MyDrawerList extends StatefulWidget {
  const MyDrawerList({Key? key}) : super(key: key);

  @override
  _MyDrawerListState createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65,
      child: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        //  orc Custom Header file
        CusDrawerHeader(),
        //  ! END  Custom Header file

        // ! CUSTOM DRAWER LIST ITEM
        CusDrawerList(
            title: 'Address',
            icon: Icons.account_circle,
            createPage: () => CreateAddressScreen()),
        CusDrawerList(
            title: 'ConfirmOrderPage',
            icon: Icons.account_circle,
            createPage: () => ConfirmOrderPage()),
        CusDrawerList(
            title: 'MyOrdersScreen',
            icon: Icons.account_circle,
            createPage: () => MyOrdersScreen()),
        CusDrawerList(
            title: 'ProductScreen',
            icon: Icons.account_circle,
            createPage: () => ProductDetails()),
        CusDrawerList(
            title: 'ProfileScreen',
            icon: Icons.account_circle,
            createPage: () => ESprofileOne()),
        CusDrawerList(
            title: 'ProfilePage',
            icon: Icons.account_circle,
            createPage: () => ProfilePage()),
        CusDrawerList(
            title: 'SProfile',
            icon: Icons.account_circle,
            createPage: () => SProfileScreen()),
      ])),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                          // !P:- 1. CUSTOM DRAWER HEADER                         */
/* -------------------------------------------------------------------------- */
class CusDrawerHeader extends StatelessWidget {
  CusDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        child: Stack(children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Image.asset(
                '',
                width: 130,
                height: 130,
              ),
            ),
          ),
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Rahul",
                  style: TextStyle(
                      color: Color(0xFF545454),
                      fontSize: 10.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }
}

/* -------------------------------------------------------------------------- */
/*               // ! P:-2. CUSTOM DRAWER LIST VIEW DATA                     */
/* -------------------------------------------------------------------------- */

class CusDrawerList extends StatelessWidget {
  Widget Function() createPage;
  // dynamic sendPage;
  String title;
  IconData icon;

  CusDrawerList({
    Key? key,
    required this.title,
    required this.icon,
    required this.createPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return createPage();
          }));
        },
        child: ListTile(
          title: Text(title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
          leading: Icon(icon),
        ));
  }
}
