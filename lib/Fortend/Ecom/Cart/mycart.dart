import 'package:flutter/material.dart';
import 'package:uiproject/Fortend/Widget/Border/round_border.dart';

class CartTwoPage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/cart2.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Cart'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, int index) {
                  return cartItems(index);
                },
              ),
            ),
            _checkoutSection()
          ],
        ));
  }

  Widget cartItems(int index) {
    return RoundedContainer(
      padding: const EdgeInsets.all(0),
      margin: EdgeInsets.all(10),
      height: 130,
      child: Row(
        children: <Widget>[
          Container(
            width: 130,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(''),
              fit: BoxFit.cover,
            )),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          "Item 1" + index.toString(),
                          overflow: TextOverflow.fade,
                          softWrap: true,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 15),
                        ),
                      ),
                      Container(
                        width: 50,
                        child: IconButton(
                          onPressed: () {
                            print("Button Pressed");
                          },
                          color: Colors.red,
                          icon: Icon(Icons.delete),
                          iconSize: 20,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Price: "),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '\$200',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text("Sub Total: "),
                      SizedBox(
                        width: 5,
                      ),
                      Text('\$400',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Colors.orange,
                          ))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Ships Free",
                        style: TextStyle(color: Colors.orange),
                      ),
                      Spacer(),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {},
                            splashColor: Colors.redAccent.shade200,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.redAccent,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('2'),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () {},
                            splashColor: Colors.lightBlue,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50)),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.green,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _checkoutSection() {
    return Material(
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Text(
                    "Checkout Price:",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Spacer(),
                  Text(
                    "Rs. 5000",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Material(
              color: Colors.red,
              elevation: 1.0,
              child: InkWell(
                splashColor: Colors.redAccent,
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      "Checkout",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
