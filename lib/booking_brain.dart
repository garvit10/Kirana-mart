import 'package:flutter/material.dart';
import 'booking_card.dart';

class BookingBrain {
  List<BookingCard> bookings = [
    BookingCard(
      shopName: 'shop name',
      shopId: '0001',
      shopType: 'grocery',
      time: '6:00',
      address: 'A-12 , Delhi - 92',
      phone: '57547',
      email: 'owner@email.com',
      status: 'Completed',
      dateAlloted: '12-12-2012',

    ),
  ];
  List<BookingCard> getList() => bookings;
}