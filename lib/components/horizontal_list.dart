import 'package:flutter/material.dart';

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          title,
          const SizedBox(height: 14),
          Expanded(
            child: SizedBox(
              height: 10,
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
