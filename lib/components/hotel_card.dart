import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class HotelCard extends StatelessWidget {
  const HotelCard({
    Key? key,
    required this.name,
    required this.location,
    required this.dailyPrice,
    required this.rating,
  }) : super(key: key);

  final String name;
  final String location;
  final double dailyPrice;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/welcome.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                              color: textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            location,
                            style: const TextStyle(
                                color: Color(0xFF7E8EAA),
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('$rating',
                              style: TextStyle(
                                  color: secondaryColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal)),
                          Icon(Icons.star, color: secondaryColor, size: 12),
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(thickness: 1, color: Color(0xFFF1F4F6)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(style: hotelCardSubTextStyle, children: [
                          const TextSpan(text: "from "),
                          TextSpan(
                              text: "\$$dailyPrice /day",
                              style: hotelCardSubTextStyle.copyWith(
                                  color: textColor))
                        ]),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: const Text('View Rooms',
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.w500)))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
