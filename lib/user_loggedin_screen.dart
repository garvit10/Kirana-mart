import 'package:flutter/material.dart';
import 'package:helping_hand/booking_brain.dart';
import 'package:helping_hand/view_cart.dart';
import 'store_card.dart';
import 'store_brain.dart';
import 'constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

enum HamBurger { Stores, MyBookings, ViewCart }
HamBurger page = HamBurger.Stores;

class UserLoggedIn extends StatefulWidget {
  static const String id = 'user-loggedin';
  @override
  _UserLoggedInState createState() => _UserLoggedInState();
}

class _UserLoggedInState extends State<UserLoggedIn> {

  @override
  Widget build(BuildContext context) {
    StoreBrain SB = StoreBrain();
    BookingBrain bookingBrain = BookingBrain();
    ViewCart viewCart = ViewCart();

    Widget getBody(page) {
      if (page == HamBurger.Stores) {
        return ListView(children: SB.getList());
      }
      else if (page == HamBurger.MyBookings) {
        return ListView(children: bookingBrain.getList());
      }
      else if (page == HamBurger.ViewCart) {
        return ListView(children: viewCart.getList());
      }
    }

    return SafeArea(
      child: Scaffold(backgroundColor: Color(0xFF0B1033),
        appBar: AppBar(
          title: Text('किराना Mart'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('किराना', style: kMainTextStyle.copyWith(
                      fontSize: 55,
                    )),
                    Text('Mart',
                        style: kMainTextStyle.copyWith(
                          color: Colors.deepOrangeAccent,
                          fontSize: 55,
                        )),
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),

              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text('Stores'),
                ),
                onTap: () {
                  setState(() {
                    page = HamBurger.Stores;
                    Navigator.pop(context);
                  });
                },
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.book),
                  title: Text('My Bookings'),
                ),
                onTap: () {
                  setState(() {
                    page = HamBurger.MyBookings;
                    Navigator.pop(context);
                  });
                },
              ),
              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text('View Cart'),
                ),
                onTap: () {
                  setState(() {
                    page = HamBurger.ViewCart;
                    Navigator.pop(context);
                  });
                },
              ),

              GestureDetector(
                child: ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    setState(() {
                      page = HamBurger.Stores;
                      Alert(
                        context: context,
                        type: AlertType.warning,
                        title: "Are Sure,You want to logout",
                        buttons: [
                          DialogButton(
                            child: Text(
                              "LOGOUT",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Colors.red,
                          ),
                          DialogButton(
                            child: Text(
                              "CANCEL",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            onPressed: () => Navigator.pop(context),
                            color: Colors.black,
                          ),
                        ],
                        style: AlertStyle(
                          backgroundColor: Colors.white,
                          isCloseButton: false,
                        ),
                      ).show();
                    });
                  },
                ),
              ),
            ],
          ),
        ),
body: getBody(page),

//        body: page == HamBurger.Stores
//            ? ListView(
//                children: SB.getList(),
//              )
//            : ListView(
//                children: bookingBrain.getList(),
//              ),
      ),
    );
  }
}
