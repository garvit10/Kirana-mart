import 'store_card.dart';

class StoreBrain {
  List<StoreCard> stores = [
    StoreCard(
      shopName: 'Mayur Pharmacy',
      shopId: '90009',
      shopOwner: 'Gopal Das',
      shopType: 'Pharmacy',
      openTime: '11:00',
      closeTime: '21:00',
      address: 'Pratap Nagar,Delhi-110091',
      phone: '2465467355',
      email: 'gopdas12@gmail.com',
    ),
    StoreCard(
      shopName: 'Jenendra Medicos',
      shopId: '90002',
      shopOwner: 'Ravi Jain',
      shopType: 'Pharmacy',
      openTime: '11:00',
      closeTime: '22:00',
      address: 'Anand Vihar, Delhi-110084',
      phone: '2121456930',
      email: 'rvjain2u@gmail.com',
    ),
    StoreCard(
      shopName: 'Nagar Dairy',
      shopId: '90024',
      shopOwner: 'Ramesh Nagar',
      shopType: 'Dairy',
      openTime: '09:00',
      closeTime: '21:00',
      address: 'Anand Vihar, Delhi-110084',
      phone: '1558988233',
      email: 'ramnag13@gmail.com',
    ),
    StoreCard(
      shopName: 'Safal Dairy',
      shopId: '90071',
      shopOwner: 'Ratan Choudhary',
      shopType: 'Dairy',
      openTime: '09:30',
      closeTime: '22:00',
      address: 'Gagan Vihar, Delhi-110083',
      phone: '6941345822',
      email: 'jattdamuqabla@gmail.com',
    ),
    StoreCard(
      shopName: 'Sardar Grocery',
      shopId: '90069',
      shopOwner: 'Sartaj Singh',
      shopType: 'Grocery',
      openTime: '08:00',
      closeTime: '21:00',
      address: 'Shakarpur, Delhi-110094',
      phone: '4578822853',
      email: 'guruji25@gmail.com',
    ),
    StoreCard(
      shopName: 'Bhagwan Grocery',
      shopId: '90099',
      shopOwner: 'Ganesh Gaitonde',
      shopType: 'Grocery',
      openTime: '08:00',
      closeTime: '22:00',
      address: 'Rohini-17, Delhi-110057',
      phone: '8513158722',
      email: 'trivedided@gmail.com',
    ),
  ];

  List<StoreCard> getList() => stores;
}
