import 'package:flutter/material.dart';
import 'package:travel_app/components/hotel_card.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/top_bar.dart';
import 'package:travel_app/components/tagged_hot.dart';
import 'package:travel_app/consts.dart';

import 'package:travel_app/components/image_card.dart';

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
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const TopBar(
          title: 'Enjoy your destination!',
          searchText: 'Search Your Favourite Place',
        ),
        Expanded(
          flex: 21,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 14.0),
            child: PageView.builder(
                itemCount: hotels.length,
                scrollDirection: Axis.horizontal,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  return HotelCard(
                      name: hotels[index]['name'] ?? '',
                      location: hotels[index]['location'] ?? '',
                      dailyPrice: double.parse(hotels[index]['price'] ?? '0'),
                      rating: double.parse(hotels[index]['rating'] ?? '0'));
                }),
          ),
        ),
        Expanded(
          flex: 10,
          child: HorizontalList(
            padding: const EdgeInsets.only(left: 20, bottom: 14),
            title: TaggedHot(
              child: Text(
                'Top Cities',
                textAlign: TextAlign.left,
                style: headerStyle,
              ),
            ),
            card: const ImageCard(
                padding: EdgeInsets.only(right: 14), tag: 'Vienna'),
          ),
        ),
        const SizedBox(height: 14)
      ],
    );
  }
}
