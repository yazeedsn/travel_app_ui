import 'package:flutter/material.dart';
import 'package:travel_app/components/image_card.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/tagged_hot.dart';
import 'package:travel_app/components/top_bar.dart';
import 'package:travel_app/components/offer_card.dart';
import 'package:travel_app/consts.dart';

class FlightsPage extends StatelessWidget {
  const FlightsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TopBar(
        title: 'Flights',
        searchText: 'Search Your Favourite Place',
      ),
      Expanded(
        flex: 10,
        child: HorizontalList(
          padding: const EdgeInsets.only(left: 20, bottom: 14),
          title: Text(
            'Popular Destinations',
            style: headerStyle,
          ),
          card: const ImageCard(
            padding: EdgeInsets.only(right: 14),
            tag: 'Vienna',
          ),
        ),
      ),
      Expanded(
          flex: 11,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Popular Offer',
                  style: headerStyle,
                ),
                const SizedBox(height: 14),
                Expanded(
                  flex: 3,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
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
        flex: 10,
        child: HorizontalList(
          padding: const EdgeInsets.only(left: 20, bottom: 14),
          title: TaggedHot(
              child: Text(
            'Top Cities',
            style: headerStyle,
          )),
          card: const ImageCard(
            padding: EdgeInsets.only(right: 14),
            tag: 'Paris',
          ),
        ),
      ),
      const SizedBox(height: 14)
    ]);
  }
}
