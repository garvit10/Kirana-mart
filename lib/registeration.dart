import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_button.dart';

class Registeration extends StatefulWidget {
  static const String id = 'registeration';
  @override
  _RegisterationState createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  Character _character = Character.user;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFF0B1033),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 50.0),
          child: ListView(
            children: <Widget>[
              Hero(
                tag: 'nukaad-mart',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('किराना', style: kMainTextStyle),
                    Text(
                      ' Mart',
                      style: kMainTextStyle.copyWith(
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Radio(
                    value: Character.user,
                    groupValue: _character,
                    onChanged: (Character value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Text(
                    'User',
                    style: kRadioTextStyle,
                  ),
                  Radio(
                    value: Character.owner,
                    groupValue: _character,
                    onChanged: (Character value) {
                      setState(() {
                        _character = value;
                      });
                    },
                  ),
                  Text(
                    'Owner',
                    style: kRadioTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 40),
              TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                  labelStyle: kLabelStyle,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  labelStyle: kLabelStyle,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter your phone',
                  labelStyle: kLabelStyle,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.center,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your passsword',
                  labelStyle: kLabelStyle,
                ),
              ),
              SizedBox(height: 10),
              Visibility(
                visible: _character == Character.owner,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    labelText: 'Enter your shop name',
                    labelStyle: kLabelStyle,
                  ),
                ),
              ),
              SizedBox(height: 10),
              ReusableButton(
                title: 'Register',
                // onTap: ,
              ),
              SizedBox(height: 40),
              Center(
                child: Text(
                  'Already registered ,',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0,),
              Center(
                child: GestureDetector(
                  child: Text(
                    'LOGIN HERE ',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// name email phone password
