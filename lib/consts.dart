import 'package:flutter/material.dart';

Color secondaryColor = const Color(0xFF44C7B3);
Color textColor = const Color(0xFF24253D);
Color gold = const Color(0xFFFFAA00);

TextStyle welcomeScreenTitleStyle = const TextStyle(
  color: Colors.white,
  fontSize: 42,
  fontFamily: 'OpenSans',
  fontWeight: FontWeight.bold,
);

TextStyle outlinedButtonTextStyle = const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w500);

TextStyle titleTextStyle = TextStyle(
  color: textColor,
  fontSize: 30,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.normal,
);

TextStyle textFieldHintStyle = TextStyle(
  color: textColor.withOpacity(0.3),
  fontSize: 16,
  fontFamily: 'OpenSans',
  fontWeight: FontWeight.normal,
);

TextStyle textButtonStyle = const TextStyle(
  fontSize: 13,
  fontFamily: 'OpenSans',
  fontWeight: FontWeight.normal,
);

TextStyle iconTextStyle = const TextStyle(
  fontSize: 10,
  fontFamily: 'OpenSans',
  fontWeight: FontWeight.normal,
);

TextStyle headerStyle = TextStyle(
    color: textColor,
    fontSize: 20,
    fontFamily: 'OpenSans',
    fontWeight: FontWeight.bold);

TextStyle searchBarHintTextStyle = TextStyle(
  color: const Color(0xFF818181).withOpacity(0.3),
  fontSize: 18,
  fontFamily: 'SegoeUI',
  fontWeight: FontWeight.normal,
);

TextStyle hotelCardSubTextStyle = TextStyle(
    color: secondaryColor, fontSize: 12, fontWeight: FontWeight.normal);

//temp
const cities1 = [
  {
    'name': 'Vienna',
    'image': 'assets/images/vienna1.png',
  },
  {
    'name': 'Dubai',
    'image': 'assets/images/dubai.png',
  },
  {
    'name': 'London',
    'image': 'assets/images/london.png',
  },
  {
    'name': 'Berlin',
    'image': 'assets/images/berlin.png',
  },
];

const cities2 = [
  {
    'name': 'Vienna',
    'image': 'assets/images/vienna2.png',
  },
  {
    'name': 'Venice',
    'image': 'assets/images/venice.png',
  },
  {
    'name': 'proto',
    'image': 'assets/images/porto.png',
  },
  {
    'name': 'Berlin',
    'image': 'assets/images/berlin.png',
  },
];

const hotels = [
  {
    'name': 'Hilton Thai Hotel',
    'location': 'Los Angeles, California',
    'rating': '4.8',
    'price': '195'
  },
  {
    'name': 'Hilton Thai Hotel',
    'location': 'Los Angeles, California',
    'rating': '4.8',
    'price': '195'
  },
  {
    'name': 'Hilton Thai Hotel',
    'location': 'Los Angeles, California',
    'rating': '4.8',
    'price': '195'
  }
];
