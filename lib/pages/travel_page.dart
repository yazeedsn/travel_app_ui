import 'package:flutter/material.dart';
import 'package:travel_app/components/hotel_card.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/top_bar.dart';
import 'package:travel_app/consts.dart';

import '../components/city_card.dart';

class TravelPage extends StatelessWidget {
  TravelPage({Key? key}) : super(key: key);

  final hotels = [
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            flex: 10,
            child: TopBar(
              title: 'Enjoy your destination!',
              searchText: 'Search Your Favourite Place',
            ),
          ),
          Expanded(
            flex: 20,
            child: PageView.builder(
                itemCount: hotels.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HotelCard(
                      name: hotels[index]['name'] ?? '',
                      location: hotels[index]['location'] ?? '',
                      dailyPrice: double.parse(hotels[index]['price'] ?? '0'),
                      rating: double.parse(hotels[index]['rating'] ?? '0'));
                }),
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 24),
              child: HorizontalList(
                title: Row(
                  children: [
                    Text(
                      'Top Cities ',
                      textAlign: TextAlign.left,
                      style: headerStyle,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 4),
                      decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        'HOT',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 8,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
                card: const CityCard(name: 'Vienna'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
