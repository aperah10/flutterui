import 'package:flutter/material.dart';
import 'package:uiproject/Fortend/Widget/Appbar/CusAppbar.dart';
import 'package:uiproject/Fortend/Widget/Border/round_border.dart';
import 'package:uiproject/ResuableCode/Buttons_C.dart';
import 'package:uiproject/ResuableCode/Image_C.dart';
import 'package:uiproject/ResuableCode/Text_C.dart';

// class CartScr extends StatelessWidget {
//   static const routeName = '/cart-screens';
//   CartScr({Key? key}) : super(key: key);

//   // CartpBloc cartBloc = CartpBloc(cartRespo: CartDataRespo(), storage: storage);

//   // // ! LOAD INIT STATE IS CART PAGE
//   // @override
//   // void initState() {
//   //   cartBloc = BlocProvider.of<CartpBloc>(context);
//   //   cartBloc.add(FetchCartEvent());
//   //   super.initState();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<CartpBloc, CartpState>(
//         listener: (context, state) {},
//         builder: (context, state) {
//           print("produc page state: $state");
//           if (state is CartLoadingState) {
//             return Center(child: CircularProgressIndicator());
//           }
//           if (state is CartErrorState) {
//             return Center(child: Text(' this is eror ${state.message}'));
//           }
//           if (state is CartLoadedState) {
//             return CartScrOne(cartData: state.cartData);
//           }
//           return Scaffold(
//             body: Center(child: CircularProgressIndicator()),
//           );
//         });
//   }
// }

/* -------------------------------------------------------------------------- */
/*                              // ! CART SCREEN                              */
/* -------------------------------------------------------------------------- */

class CartScrOne extends StatelessWidget {
  dynamic cartData;
  CartScrOne({Key? key, this.cartData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(titlename: 'Cart'),
      body: SafeArea(
          child: Container(
              child: Stack(children: <Widget>[
        // ! LISTVIEW BUIDER
        Flexible(
          child: ListView.builder(
              itemCount: cartData.length,
              itemBuilder: (context, index) {
                print(index);
                // return dataOfListView(product: CatModel.items[index]);
                return CartListScr(cartNumber: cartData[index]);
              }),
        ),
        // ! CHECKOUT BTN
        CartCheckBtn()
      ]))),
    );
  }
}

/* -------------------------------------------------------------------------- */
/*                            // ! CHECKOUT SCREEN                            */
/* -------------------------------------------------------------------------- */
class CartCheckBtn extends StatelessWidget {
  const CartCheckBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black12,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ! TOATAL PRICE DATA
              Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Row(
                    children: <Widget>[
                      TxtTitle(
                        titleName: "Checkout Price:",
                      ),
                      Spacer(),
                      SubTxtTitle(
                        titleName: "Rs. 5000",
                      ),
                    ],
                  )),
              // ! CHECKOUT BTN
              SingleBtn(
                btnName: "Continue",
              )
            ]));
  }
}

/* -------------------------------------------------------------------------- */
/*                            // !CART LIST SCREEN                            */
/* -------------------------------------------------------------------------- */
class CartListScr extends StatelessWidget {
  dynamic cartNumber;
  CartListScr({Key? key, this.cartNumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      padding: const EdgeInsets.all(0),
      margin: EdgeInsets.all(10),
      height: 130,
      child: Row(children: <Widget>[
        // ! 1  Product PIC
        CartPic(),

        // !
      ]),
    );
  }
}
