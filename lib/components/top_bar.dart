import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;
import 'package:travel_app/consts.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key? key, required this.title, this.searchText})
      : super(key: key);

  final String title;
  final String? searchText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: headerStyle),
            Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: const Icon(
                  FontAwesomeIcons.sliders,
                  color: Color(0xFF404040),
                )),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: const Offset(0, 13),
              color: Colors.black.withOpacity(0.09),
              blurRadius: 31,
            ),
          ]),
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                prefixIcon: const Icon(Icons.search, size: 25),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(26)),
                hintText: searchText,
                hintStyle: searchBarHintTextStyle),
          ),
        ),
      ],
    );
  }
}
