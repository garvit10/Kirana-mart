import 'package:flutter/material.dart';
import 'package:helping_hand/main_screen.dart';
import 'package:helping_hand/registeration.dart';
import 'package:helping_hand/user_loggedin_screen.dart';

import 'booking_page.dart';

import 'owner_loggedin_screen.dart';


void main() => runApp(MyApp());

// #F1F5F9

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        backgroundColor: Color(0xFFE4E9EF),
      ),
      initialRoute: MainScreen.id,
      routes: {
        MainScreen.id: (context) => MainScreen(),
        Registeration.id: (context) => Registeration(),
        UserLoggedIn.id: (context) => UserLoggedIn(),

        BookingPage.id: (context) => BookingPage(),

        OwnerLoggedIn.id: (context) => OwnerLoggedIn(),

      },
    );
  }
}
