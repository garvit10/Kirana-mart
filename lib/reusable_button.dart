import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  final String title;
  Color colour;
  final Function onTap;
  //Color(0xFF272A4E)
  // ReusableButton({this.title , this.colour = Color(0xFF272A4E) , this.onTap})
  ReusableButton({this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20.0, color: Colors.white),
        ),
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          // color: Color(0xFF272A4E),
          color: Color(0xFF3D72DE),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
