import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.titlename,
    this.createPage,
    this.act = false,
  })  : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  final String titlename;
  // final Widget Function() createPage;
  dynamic createPage;
  bool act = false;

  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  _CustomAppBarState();

  @override
  Widget build(BuildContext context) {
    return AppBar(
        // ! 1. TITLE FOR APPBAR
        title: AppBarTitle(
          titlename: widget.titlename,
        ),
        // orc TITLE FOR APPBAR
        backgroundColor: Colors.white,
        elevation: 5.0,
        automaticallyImplyLeading: false,

        // ! 2. LEADING WIDGET FOR APPBAR
        leading: AppBarLeadItem(createPage: widget.createPage),
        // orc END  LEADING  FOR APPBAR

        // ! 3. ACTIONS  LIST WIDGET APPBAR LIST OF ITEM
        actions: widget.act == true
            ? <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                )
              ]
            : null);
  }
}

/* -------------------------------------------------------------------------- */
/*                          // ! 1. TITLE FOR APPBAR                           */
/* -------------------------------------------------------------------------- */
class AppBarTitle extends StatelessWidget {
  dynamic titlename;
  AppBarTitle({Key? key, this.titlename}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      titlename,
      style: TextStyle(color: Colors.black),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                      //  ! 2. LEADING ITEM  FOR APPBAR                       */
/* -------------------------------------------------------------------------- */
class AppBarLeadItem extends StatelessWidget {
  dynamic createPage;

  AppBarLeadItem({Key? key, this.createPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => createPage()));
      },
      child: Container(
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
    );
  }
}

// ! ACTIONS LIST OF APPBAR
