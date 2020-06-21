import 'package:flutter/material.dart';
import 'Owner_card.dart';

class OwnerBrain {
  List<OwnerCard> history = [
    OwnerCard(
      customerName: 'Customer name',
      transactionId: '0001',
      time: '6:00',
      phone: '57547',
      email: 'customer@email.com',
      status: 'Completed',
      dateAlloted: '12-12-2012',
    ),
  ];
  List<OwnerCard> upcoming = [
    OwnerCard(
      customerName: 'Customer name',
      transactionId: '0002',
      time: '6:00',
      phone: '57547',
      email: 'customer@email.com',
      status: 'Pending',
      dateAlloted: '12-05-2020',
    ),
  ];
  List<OwnerCard> getHistory() => history;
  List<OwnerCard> getUpcoming() => upcoming;
}
