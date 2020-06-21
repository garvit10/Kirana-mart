import 'package:flutter/material.dart';
import 'package:helping_hand/reusable_button.dart';
import 'constants.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class BookingPage extends StatefulWidget {
  static const String id = 'booking-page';

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = '3:00';
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
        child: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  'Select your slot',
                  style: TextStyle(fontSize: 25.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.white),
                  underline: Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  onChanged: (newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>['3:00', '5:00', '7:00', '9:00']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter item',
                labelStyle: kLabelStyle,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter Quantity',
                labelStyle: kLabelStyle,
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Add some notes ',
                labelStyle: kLabelStyle,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ReusableButton(title: 'Add', onTap: () {
              setState(() {
                Alert(
                  context: context,
                  type: AlertType.success,
                  title: "Successfully Added",
                  buttons: [
                    DialogButton(
                      child: Text(
                        "Go Back",
                        style:
                        TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.pop(context),
                      color: Colors.red,
                    ),
                  ],
                  style: AlertStyle(
                    backgroundColor: Colors.white,
                    isCloseButton: false,
                  ),
                ).show();
              });
            }),
            SizedBox(
              height: 20.0,
            ),

          ],
        ),
      ),
    );
  }
}
