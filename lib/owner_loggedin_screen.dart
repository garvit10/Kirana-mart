import 'package:flutter/material.dart';
import 'store_card.dart';
import 'Owner_brain.dart';
import 'constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

enum HamBurger { UpcomingOrders, OrderHistory, EditInfo }
HamBurger page = HamBurger.UpcomingOrders;

OwnerBrain OB = OwnerBrain();

class OwnerLoggedIn extends StatefulWidget {
  static const String id = 'owner-loggedin';
  @override
  _OwnerLoggedInState createState() => _OwnerLoggedInState();
}

class _OwnerLoggedInState extends State<OwnerLoggedIn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('किरानाMart'),
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
                    title: Text('Upcoming Orders'),
                  ),
                  onTap: () {
                    setState(() {
                      page = HamBurger.UpcomingOrders;
                      Navigator.pop(context);
                    });
                  },
                ),
                GestureDetector(
                  child: ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Order History'),
                  ),
                  onTap: () {
                    setState(() {
                      page = HamBurger.OrderHistory;
                      Navigator.pop(context);
                    });
                  },
                ),
//              ListTile(
//                title: Text('Update User info'),
//              ),
                GestureDetector(
                  child: ListTile(
                    leading: Icon(Icons.mode_edit),
                    title: Text('Edit Info'),
                  ),
                  onTap: () {
                    setState(() {
                      page = HamBurger.EditInfo;
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
                        page = HamBurger.UpcomingOrders;
                        Alert(
                          context: context,
                          type: AlertType.warning,
                          title: "Are Sure,You want to logout",
                          buttons: [
                            DialogButton(
                              child: Text(
                                "LOGOUT",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () => Navigator.pop(context),
                              color: Colors.red,
                            ),
                            DialogButton(
                              child: Text(
                                "CANCEL",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
          body: ownerPages(page),
          backgroundColor: Color(0xFF0B1033),
      ),

    );
  }
}

Widget ownerPages(HamBurger page) {
  switch (page) {
    case HamBurger.UpcomingOrders:
      return ListView(
        children: OB.getHistory(),
      );
    case HamBurger.OrderHistory:
      return ListView(
        children: OB.getUpcoming(),
      );
    default:
      return Center(
        child: Text('Select Something From hamburger menu'),
      );
  }
}
