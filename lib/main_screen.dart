import 'package:flutter/material.dart';
import 'package:helping_hand/registeration.dart';
import 'package:helping_hand/user_loggedin_screen.dart';
import 'reusable_button.dart';
import 'constants.dart';
import 'package:helping_hand/owner_loggedin_screen.dart';


class MainScreen extends StatefulWidget {
  static const String id = 'main-screen';

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Character _character = Character.user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF0B1033),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Text('Welcome to नुक्कड़Mart', style: kMainTextStyle),
              // Text('Welcome to', style: kMainTextStyle),
              Hero(
                tag: 'kirana-mart',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    
                    Text('किराना ', style: kMainTextStyle),
                    Container(
                      child: Text('Mart ',
                          style: kMainTextStyle.copyWith(
                            color: Colors.deepOrangeAccent,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Icon(
                  Icons.shopping_cart,
                  size: 40.0,
                ),
              ),
              SizedBox(height: 2),
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Enter your email',
                  labelStyle: kLabelStyle,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                textAlign: TextAlign.center,
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Enter your password',
                  labelStyle: kLabelStyle,
                ),
              ),
              SizedBox(height: 20),
              ReusableButton(
                title: 'Login',
                onTap: () {
                  // ref
                  _character==Character.user? Navigator.pushNamed(context, UserLoggedIn.id):Navigator.pushNamed(context, OwnerLoggedIn.id);
                },
              ),
              SizedBox(height: 40),
              Center(
                child: Text('New User ?',
                style: TextStyle(
                  fontSize: 20.0,
                ),
                ),
              ),
              SizedBox(height: 10.0,),
              Center(
                child: GestureDetector(
                  child: Text(
                    'REGISTER HERE',
                     style: TextStyle(
                      fontSize: 20.0,
                    color: Colors.deepOrangeAccent,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, Registeration.id);
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
