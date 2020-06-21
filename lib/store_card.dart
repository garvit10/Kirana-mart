import 'package:flutter/material.dart';
import 'package:helping_hand/booking_page.dart';

class StoreCard extends StatelessWidget {
  final String shopName;
  final String shopType;
  final String shopId;
  final String shopOwner;
  final String openTime;
  final String closeTime;
  final String address;
  final String phone;
  final String email;
  // Function onBook;

  StoreCard(
      {this.shopName,
      this.shopType,
      this.shopId,
      this.shopOwner,
      this.openTime,
      this.closeTime,
      this.address,
      this.phone,
      this.email});

  @override
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border(
        right: BorderSide( //                   <--- left side
          color: Colors.black,
          width: 3.0,
        ),
        bottom: BorderSide( //                    <--- top side
          color: Colors.black,
          width: 3.0,
        ),
      ),
    );
  }
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text(
                shopName,
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: SizedBox(
                height: 10.0,
                width: double.infinity,
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  shopType,
                  style: TextStyle(fontSize: 25.0),
                ),
                Text('Shop id : $shopId', style: TextStyle(fontSize: 25.0))
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Owner : $shopOwner',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Opening at : $openTime',
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  'Closing at : $closeTime',
                  style: TextStyle(fontSize: 20.0),
                ),
                // Text('Time Alotted : 6:00'),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      address,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      phone,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 20.0),
                    ),
                  ],
                ),
                Container(
                  decoration: myBoxDecoration(),
                  margin: EdgeInsets.only(top:55.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, BookingPage.id);
                    },
                    child: Container(
                      margin: EdgeInsets.all(3.0),
                      child: Text(
                        'Book',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
