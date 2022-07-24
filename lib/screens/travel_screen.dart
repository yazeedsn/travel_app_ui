import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;
import 'package:travel_app/consts.dart';

class TravelScreen extends StatelessWidget {
  const TravelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 80,
        height: 80,
        padding: const EdgeInsets.only(top: 14.0),
        child: FloatingActionButton(
          backgroundColor: secondaryColor,
          onPressed: () {},
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Enjoy your destination!', style: headerStyle),
                  Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationY(math.pi),
                      child: const Icon(
                        FontAwesomeIcons.sliders,
                        color: Color(0xFF404040),
                      )),
                ],
              ),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 13),
                    color: Colors.black.withOpacity(0.09),
                    blurRadius: 31,
                  ),
                ]),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 12),
                      prefixIcon: const Icon(Icons.search, size: 25),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(26)),
                      hintText: 'Search Your Favourite Place',
                      hintStyle: searchBarHintTextStyle),
                ),
              ),
              const Card(),
            ],
          ),
        ),
      ),
    );
  }
}
