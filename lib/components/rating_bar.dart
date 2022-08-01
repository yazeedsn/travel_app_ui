import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class RatingBar extends StatefulWidget {
  const RatingBar({
    Key? key,
  }) : super(key: key);

  @override
  State<RatingBar> createState() => _RatingBarState();
}

class _RatingBarState extends State<RatingBar> {
  int rating = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () => setState(() {
                rating = 1;
              }),
              child: Icon(
                Icons.star,
                color: (rating >= 1) ? gold : const Color(0xFF8C8C98),
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                rating = 2;
              }),
              child: Icon(
                Icons.star,
                color: (rating >= 2) ? gold : const Color(0xFF8C8C98),
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                rating = 3;
              }),
              child: Icon(
                Icons.star,
                color: (rating >= 3) ? gold : const Color(0xFF8C8C98),
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                rating = 4;
              }),
              child: Icon(
                Icons.star,
                color: (rating >= 4) ? gold : const Color(0xFF8C8C98),
                size: 30,
              ),
            ),
            GestureDetector(
              onTap: () => setState(() {
                rating = 5;
              }),
              child: Icon(
                Icons.star,
                color: (rating >= 5) ? gold : const Color(0xFF8C8C98),
                size: 30,
              ),
            ),
          ],
        ),
        Text(
          'Tap a star to rate',
          style: TextStyle(
            color: const Color(0xFF24253D).withOpacity(0.5),
            fontFamily: 'OpenSans',
            fontSize: 13,
          ),
        )
      ],
    );
  }
}
