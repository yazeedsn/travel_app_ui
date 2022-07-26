import 'package:flutter/material.dart';
import 'package:travel_app/components/city_card.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/top_bar.dart';
import 'package:travel_app/components/offer_card.dart';
import 'package:travel_app/consts.dart';

class FlightsPage extends StatelessWidget {
  const FlightsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Expanded(
        flex: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TopBar(
            title: 'Flights',
            searchText: 'Search Your Favourite Place',
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: HorizontalList(
          padding: const EdgeInsets.only(left: 20, top: 16),
          title: Text(
            'Popular Destinations',
            style: headerStyle,
          ),
          card: const CityCard(
            name: 'Vienna',
          ),
        ),
      ),
      Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Popular Offer',
                    style: headerStyle,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      OfferCard(),
                      OfferCard(),
                    ],
                  ),
                ),
              ],
            ),
          )),
      Expanded(
        flex: 3,
        child: HorizontalList(
            padding: const EdgeInsets.only(left: 20, top: 16),
            title: Text(
              'Top Cities',
              style: headerStyle,
            ), card: CityCard(name: 'Paris',),),
      )
    ]);
  }
}
