import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class TaggedHot extends StatelessWidget {
  const TaggedHot({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        child,
        Container(
          margin: const EdgeInsets.only(left: 12),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
              color: secondaryColor, borderRadius: BorderRadius.circular(10)),
          child: const Text(
            'HOT',
            style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
