import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList(
      {Key? key,
      this.padding,
      required this.title,
      required this.itemCount,
      required this.itemBuilder})
      : super(key: key);

  final EdgeInsetsGeometry? padding;
  final Widget title;
  final int itemCount;
  final Widget Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          title,
          const SizedBox(height: 16),
          Expanded(
            child: SizedBox(
              height: 10,
              width: 1,
              child: ListView.builder(
                itemCount: itemCount,
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemBuilder: itemBuilder,
              ),
            ),
          ),
          const SizedBox(height: 4)
        ],
      ),
    );
  }
}
