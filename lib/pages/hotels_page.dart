import 'package:flutter/material.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/tagged_hot.dart';
import 'package:travel_app/components/top_bar.dart';
import 'package:travel_app/components/offer_card.dart';
import 'package:travel_app/consts.dart';

import 'package:travel_app/components/image_card.dart';
import 'package:travel_app/screens/hotel_screen.dart';

class HotelsPage extends StatelessWidget {
  const HotelsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TopBar(
        title: 'Hotels',
        searchText: 'Where to go?',
      ),
      Expanded(
        flex: 10,
        child: HorizontalList(
          padding: const EdgeInsets.only(left: 20, bottom: 14),
          title: Text(
            'Near You',
            style: headerStyle,
          ),
          card: const ImageCard(
            padding: EdgeInsets.only(right: 14),
            tag: 'Paris',
          ),
        ),
      ),
      Expanded(
          flex: 11,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Popular Offer',
                  style: headerStyle,
                ),
                const SizedBox(height: 14),
                Expanded(
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
        flex: 10,
        child: HorizontalList(
          padding: const EdgeInsets.only(left: 20, bottom: 14),
          title: TaggedHot(
            child: Text(
              'Top Hotels',
              style: headerStyle,
            ),
          ),
          card: ImageCard(
            padding: const EdgeInsets.only(right: 14),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HotelScreen()));
            },
            tag: 'Paris',
          ),
        ),
      ),
      const SizedBox(height: 14)
    ]);
  }
}
