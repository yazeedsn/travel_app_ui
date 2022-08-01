import 'package:flutter/material.dart';
import 'package:travel_app/components/image_card.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/tagged_hot.dart';
import 'package:travel_app/components/top_bar.dart';
import 'package:travel_app/components/offer_card.dart';
import 'package:travel_app/screens/details_screen.dart';
import 'package:travel_app/consts.dart';

class FlightsPage extends StatelessWidget {
  const FlightsPage({Key? key, this.onRequestIndexChange}) : super(key: key);
  final void Function(int)? onRequestIndexChange;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const TopBar(
          title: 'Flights',
          searchText: 'Where to go?',
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.19,
          width: MediaQuery.of(context).size.width,
          child: HorizontalList(
            padding: const EdgeInsets.only(left: 30, top: 16),
            title: Text(
              'Popular Destinations',
              style: headerStyle,
            ),
            itemCount: 4,
            itemBuilder: (buildContext, index) => ImageCard(
              padding: const EdgeInsets.only(right: 14),
              tag: cities1[index]['name'] ?? '',
              image: Image.asset(cities1[index]['image'] ?? ''),
              onTap: () async {
                int index = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailScreen()));
                onRequestIndexChange!(index);
              },
            ),
          ),
        ),
        const Expanded(
            flex: 2,
            child: SizedBox(
              height: 1,
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.23,
          child: HorizontalList(
              padding: const EdgeInsets.only(left: 30, top: 16),
              title: Text('Popular Offer', style: headerStyle),
              itemCount: 4,
              itemBuilder: (buildContext, index) => OfferCard(
                    onTap: () async {
                      int index = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailScreen()));
                      onRequestIndexChange!(index);
                    },
                  )),
        ),
        const Expanded(
            flex: 2,
            child: SizedBox(
              height: 1,
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.19,
          width: MediaQuery.of(context).size.width,
          child: HorizontalList(
            padding: const EdgeInsets.only(left: 30, top: 16),
            title: TaggedHot(
                child: Text(
              'Top Cities',
              style: headerStyle,
            )),
            itemCount: 4,
            itemBuilder: (buildContext, index) => ImageCard(
              padding: const EdgeInsets.only(right: 14),
              tag: cities2[index]['name'] ?? '',
              image: Image.asset(cities2[index]['image'] ?? ''),
              onTap: () async {
                int index = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailScreen()));
                onRequestIndexChange!(index);
              },
            ),
          ),
        ),
        const SizedBox(height: 30)
      ],
    );
  }
}
