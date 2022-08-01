import 'package:flutter/material.dart';
import 'package:travel_app/components/hotel_card.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/top_bar.dart';
import 'package:travel_app/components/tagged_hot.dart';
import 'package:travel_app/consts.dart';
import 'package:travel_app/components/image_card.dart';
import 'package:travel_app/screens/details_screen.dart';

class TravelPage extends StatelessWidget {
  TravelPage({Key? key, this.onRequestIndexChange}) : super(key: key);
  final void Function(int)? onRequestIndexChange;
  final PageController pageController = PageController();

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
        const Expanded(
            child: SizedBox(
          height: 1,
        )),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.36,
              width: MediaQuery.of(context).size.width,
              child: PageView.builder(
                  itemCount: hotels.length,
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  controller: pageController,
                  itemBuilder: (context, index) {
                    return HotelCard(
                        name: hotels[index]['name'] ?? '',
                        location: hotels[index]['location'] ?? '',
                        dailyPrice: double.parse(hotels[index]['price'] ?? '0'),
                        rating: double.parse(hotels[index]['rating'] ?? '0'));
                  }),
            ),
            const SizedBox(height: 8),
            PageIndicator(
              controller: pageController,
              count: hotels.length,
            ),
          ],
        ),
        const Expanded(
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
                textAlign: TextAlign.left,
                style: headerStyle,
              ),
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
        const SizedBox(height: 30)
      ],
    );
  }
}

class PageIndicator extends StatefulWidget {
  const PageIndicator({Key? key, required this.controller, required this.count})
      : super(key: key);

  final int count;
  final PageController? controller;

  @override
  State<PageIndicator> createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator> {
  late int currentIndex;
  late int previousIndex;
  late List<Widget> children;
  late void Function() listener;
  @override
  void initState() {
    super.initState();

    listener = () {
      if (widget.controller!.page! == widget.controller!.page!.floor()) {
        setState(() {
          previousIndex = currentIndex;
          currentIndex = widget.controller!.page!.floor();
          children[previousIndex] = _buildInactiveIndicator();
          children[currentIndex] = _buildActiveIndicator();
        });
      }
    };

    currentIndex = widget.controller!.initialPage;
    previousIndex = currentIndex;
    children = <Widget>[];
    for (int i = 0; i < widget.count; i++) {
      children.add((i == currentIndex)
          ? _buildActiveIndicator()
          : _buildInactiveIndicator());
    }
    widget.controller!.addListener(listener);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: children),
    );
  }

  Container _buildActiveIndicator() {
    return Container(
      width: 9,
      height: 9,
      margin: const EdgeInsets.only(right: 3),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }

  Container _buildInactiveIndicator() {
    return Container(
      width: 9,
      height: 9,
      margin: const EdgeInsets.only(right: 3),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(width: 0.5, color: const Color(0xFF707070))),
    );
  }

  @override
  void dispose() {
    widget.controller!.removeListener(listener);
    super.dispose();
  }
}
