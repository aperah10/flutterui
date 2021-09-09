import 'package:flutter/material.dart';
import 'package:uiproject/Fortend/Widget/Appbar/CusAppbar.dart';
import 'package:uiproject/ResponsiveFile/SizeConf.dart';
import 'package:uiproject/ResponsiveFile/StylingC.dart';
import 'package:uiproject/ResuableCode/Aviatar_Pic.dart';

// my import

class AccountShowScreen extends StatelessWidget {
  static String routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CusTheme.appBackGroundColor,
      appBar: CustomAppBar(
        titlename: 'Account Page',
      ),
      body: SafeArea(
          bottom: false, left: true, right: true, top: false, child: AccBody()),
      // bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}

// BODY OF PROFILE

class AccBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
          vertical: ScrSizeConfig.heightMultiplier != null
              ? 1 * ScrSizeConfig.heightMultiplier
              : 15.0),
      child: Column(
        children: [
          // ! Avitar Pic,
          CusAvaitar(),

          // ! Avitar Pic,
          SizedBox(
              height: ScrSizeConfig.heightMultiplier != null
                  ? 10 * ScrSizeConfig.heightMultiplier
                  : 15.0),
          ProfileMenu(
            text: "My Account",
            icon: "assets/icons/User Icon.svg",
            press: () => {},
          ),
          ProfileMenu(
            text: "Notifications",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Settings",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Help Center",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

// PROFILE MENU

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press,
  }) : super(key: key);

  final String text, icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          // ! padding
          horizontal: ScrSizeConfig.widthMultiplier != null
              ? 1 * ScrSizeConfig.widthMultiplier
              : 15.0,
          vertical: ScrSizeConfig.heightMultiplier != null
              ? 1 * ScrSizeConfig.heightMultiplier
              : 15.0),
      child: MaterialButton(
        // ! Button padding
        padding: EdgeInsets.symmetric(
            horizontal: ScrSizeConfig.widthMultiplier != null
                ? 2.3 * ScrSizeConfig.widthMultiplier
                : 15.0,
            vertical: ScrSizeConfig.heightMultiplier != null
                ? 2.3 * ScrSizeConfig.heightMultiplier
                : 15.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xFFF5F6F9),
        onPressed: press,
        child: Row(
          children: [
            Icon(
              Icons.face,
              color: Colors.green,
              // width: 22,
            ),
            SizedBox(width: 20),
            Expanded(
                child: Text(
              text,
              style: Theme.of(context).textTheme.headline4,
            )),
            Icon(Icons.arrow_forward_ios),
          ],
        ),
      ),
    );
  }
}
