import 'package:flutter/material.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/top_bar.dart';
import 'package:travel_app/components/offer_card.dart';
import 'package:travel_app/consts.dart';

import '../components/city_card.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Expanded(
        flex: 2,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TopBar(
            title: 'Hotels',
            searchText: 'Where to go?',
          ),
        ),
      ),
      Expanded(
        flex: 3,
        child: HorizontalList(
          padding: const EdgeInsets.only(left: 20, top: 16),
          title: Text(
            'Near You',
            style: headerStyle,
          ),
          card: CityCard(
            name: 'Paris',
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
            'Top Hotels',
            style: headerStyle,
          ),
          card: CityCard(
            name: 'Paris',
          ),
        ),
      )
    ]);
  }
}
