import 'package:flutter/material.dart';

class OwnerCard extends StatelessWidget {
  final String customerName;
  final String transactionId;
  final String time;
  final String phone;
  final String email;
  final String status;
  final String dateAlloted;

  OwnerCard({
    this.customerName,
    this.transactionId,
    this.time,
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
          color: Colors.deepOrangeAccent,
          width: 3.0,
        ),
        bottom: BorderSide( //                    <--- top side
          color: Colors.deepOrangeAccent,
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
              customerName,
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Text(
                //   shopType,
                //   style: TextStyle(fontSize: 25.0),
                // ),
                Text('Transaction id : $transactionId',
                    style: TextStyle(fontSize: 25.0))
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
                    // Text(
                    //   address,
                    //   style: TextStyle(fontSize: 20.0),
                    // ),
                    SizedBox(height: 10.0),
                  ],
                ),
                Container(
                  decoration: myBoxDecoration(),
                  margin: EdgeInsets.fromLTRB(0, 100, 10,0),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
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
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
