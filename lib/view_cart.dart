import 'package:helping_hand/cart_card.dart';

import 'cart_card.dart';

class ViewCart {
  List<CartCard> mycart = [
    CartCard(
      itemName: 'Maggi',
      quantity: 5,
      companyName: 'Nestle',
    ),
  ];
  List<CartCard> getList() => mycart;
}