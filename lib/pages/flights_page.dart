import 'package:flutter/material.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/hotel_card.dart';
import 'package:travel_app/components/top_bar.dart';
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
            )),
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
                    'Popular Destinations',
                    style: headerStyle,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                clipBehavior: Clip.antiAlias,
                                child: FittedBox(
                                  fit: BoxFit.cover,
                                  child: Image.asset('assets/images/vinne.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
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
              'Popular Offer',
              style: headerStyle,
            )),
      )
    ]);
  }
}
