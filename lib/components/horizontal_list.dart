import 'package:flutter/material.dart';
import 'city_card.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList(
      {Key? key, this.padding, required this.title, required this.card})
      : super(key: key);

  final Widget title;
  final Widget card;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(flex: 2, child: title),
          Expanded(
            flex: 5,
            child: SizedBox(
              height: 80,
              child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => card,
              ),
            ),
          )
        ],
      ),
    );
  }
}
