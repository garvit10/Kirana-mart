import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  final String shopName;
  final String shopType;
  final String shopId;
  final String time;
  final String address;
  final String phone;
  final String email;
  final String status;
  final String dateAlloted;

  BookingCard({
    this.shopName,
    this.shopType,
    this.shopId,
    this.time,
    this.address,
    this.phone,
    this.email,
    this.status,
    this.dateAlloted,
  });

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
            Text(
              shopName,
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
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
              'Time Allotted : $time',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Date : $dateAlloted',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Status : $status',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      email,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      phone,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      address,
                      style: TextStyle(fontSize: 20.0),
                    ),
                    SizedBox(height: 10.0),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top:100.0),
                  decoration: myBoxDecoration(),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(3),
                      child: Text(
                        'Show Details',
                        style: TextStyle(
                          fontSize: 22.0,
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
