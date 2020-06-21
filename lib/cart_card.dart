import 'package:flutter/material.dart';
import 'package:helping_hand/main_screen.dart';
import 'package:helping_hand/user_loggedin_screen.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class CartCard extends StatefulWidget {
  final String itemName;
  final int quantity;
  final String companyName;
//  final String shopId;
//  final String shopOwner;
//  final String openTime;
//  final String closeTime;
//  final String address;
//  final String phone;
//  final String email;

  CartCard({this.itemName, this.quantity, this.companyName});

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  @override
//  BoxDecoration myBoxDecoration() {
//    return BoxDecoration(
//      border: Border(
//        right: BorderSide( //                   <--- left side
//          color: Colors.black,
//          width: 3.0,
//        ),
//        bottom: BorderSide( //                    <--- top side
//          color: Colors.black,
//          width: 3.0,
//        ),
//      ),
//    );
//  }
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            Row(
//          crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  widget.itemName,
                      style: TextStyle(
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                    ),
                ),
                Text(
                  'Quantity: ${widget.quantity}',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            Container(
//              decoration: myBoxDecoration(),
              margin: EdgeInsets.only(top:25.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Alert(
                      context: context,
                      type: AlertType.success,
                      title: "Successfully Removed",
                      buttons: [
                        DialogButton(
                          child: Text(
                            "Go Back",
                            style:
                            TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          onPressed: () => Navigator.pushNamed(context, UserLoggedIn.id),
                          color: Colors.red,
                        ),
                      ],
                      style: AlertStyle(
                        backgroundColor: Colors.white,
                        isCloseButton: false,
                      ),
                    ).show();
                  });

                },
                child: Container(
                  margin: EdgeInsets.all(3.0),
                  child: Text(
                    'Remove',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),

      ),
      margin: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
