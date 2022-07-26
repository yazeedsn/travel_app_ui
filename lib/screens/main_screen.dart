import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';
import 'package:travel_app/pages/profile_page.dart';
import 'package:travel_app/pages/travel_page.dart';
import 'package:travel_app/pages/flights_page.dart';
import 'package:travel_app/pages/hotels_page.dart';
import 'package:travel_app/screens/hotel_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;
  final pages = <Widget>[
    TravelPage(),
    const FlightsPage(),
    const SizedBox(),
    const HotelsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 80,
        height: 80,
        padding: const EdgeInsets.only(top: 14.0),
        child: FloatingActionButton(
          backgroundColor: secondaryColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HotelScreen()));
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.message),
              Text(
                'Chatbot',
                style: iconTextStyle.copyWith(fontSize: 8),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: (index) => setState(() {
          _pageIndex = index;
        }),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: 'Travel',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active),
            label: 'Flights',
          ),
          BottomNavigationBarItem(
            icon: Container(),
            label: '',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.location_city),
            label: 'Hotels',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: SafeArea(child: pages[_pageIndex]),
    );
  }
}
