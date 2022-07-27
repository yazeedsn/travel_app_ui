import 'package:flutter/material.dart';

import 'package:travel_app/consts.dart';
import 'package:travel_app/components/image_card.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/back_navigation_bar.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/hotel.png',
                fit: BoxFit.cover,
                alignment: const Alignment(-0.6, 0),
              ),
            ),
            const Expanded(child: SizedBox())
          ],
        ),
        SizedBox.expand(
          child: DraggableScrollableSheet(
            initialChildSize: 0.6,
            minChildSize: 0.6,
            maxChildSize: 0.8,
            builder: (BuildContext context, ScrollController scrollController) {
              return SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Hotel Perrakis',
                        style: headerStyle.copyWith(
                          color: Colors.black,
                          fontSize: 22,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: gold,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: gold,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: gold,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: gold,
                            size: 13,
                          ),
                          Icon(
                            Icons.star,
                            color: gold,
                            size: 13,
                          ),
                          const SizedBox(width: 14),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Write a Review',
                              style: TextStyle(
                                color: Colors.transparent,
                                fontSize: 10,
                                shadows: [
                                  Shadow(
                                      offset: const Offset(0, -2), color: gold)
                                ],
                                decoration: TextDecoration.underline,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: gold,
                                decorationThickness: 2,
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: secondaryColor,
                            radius: 12.5,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            backgroundColor: secondaryColor,
                            radius: 12.5,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            backgroundColor: secondaryColor,
                            radius: 12.5,
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          CircleAvatar(
                            backgroundColor: secondaryColor,
                            radius: 12.5,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          RichText(
                              text: TextSpan(
                                  style:
                                      iconTextStyle.copyWith(color: textColor),
                                  children: [
                                TextSpan(
                                    text: '49+ ',
                                    style: TextStyle(color: secondaryColor)),
                                const TextSpan(
                                  text: 'People Reviewed this',
                                ),
                              ]))
                        ],
                      ),
                      RichText(
                        text: TextSpan(
                            style: const TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                            text:
                                "There are many variations of passages of Lorem Ipsum that available, but the majority have alteration.",
                            children: [
                              TextSpan(
                                  text: ' READ MORE',
                                  style: TextStyle(
                                    color: secondaryColor,
                                  ))
                            ]),
                      ),
                      const Text('Pictures',
                          style: TextStyle(
                            color: Color(0xFF0D0D0D),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          )),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(right: 12),
                              height: 210,
                              color: secondaryColor,
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Container(
                                  height: 100,
                                  margin: const EdgeInsets.only(bottom: 10),
                                  color: textColor,
                                ),
                                Container(
                                  height: 100,
                                  color: gold,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 120,
                        child: HorizontalList(
                            title: Text(
                              'Other Places',
                              style: headerStyle,
                            ),
                            card: const ImageCard(tag: 'Paris')),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        const BackNavigationBar(title: 'Hotel Details'),
      ],
    );
  }
}

// Container(
// padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
// decoration: BoxDecoration(
// color: Colors.white,
// borderRadius: BorderRadius.circular(20),
// ),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.stretch,
// children: [
// Text('Hotel Perrakis',
// style: headerStyle.copyWith(
// color: Colors.black,
// fontSize: 22,
// )),
// Row(
// children: [
// Icon(
// Icons.star,
// color: gold,
// size: 13,
// ),
// Icon(
// Icons.star,
// color: gold,
// size: 13,
// ),
// Icon(
// Icons.star,
// color: gold,
// size: 13,
// ),
// Icon(
// Icons.star,
// color: gold,
// size: 13,
// ),
// Icon(
// Icons.star,
// color: gold,
// size: 13,
// ),
// const SizedBox(width: 14),
// TextButton(
// onPressed: () {},
// child: Text(
// 'Write a Review',
// style: TextStyle(
// color: Colors.transparent,
// fontSize: 10,
// shadows: [
// Shadow(offset: const Offset(0, -2), color: gold)
// ],
// decoration: TextDecoration.underline,
// decorationStyle: TextDecorationStyle.solid,
// decorationColor: gold,
// decorationThickness: 2,
// ),
// ),
// )
// ],
// ),
// Row(
// children: [
// CircleAvatar(
// backgroundColor: secondaryColor,
// radius: 12.5,
// ),
// const SizedBox(
// width: 3,
// ),
// CircleAvatar(
// backgroundColor: secondaryColor,
// radius: 12.5,
// ),
// const SizedBox(
// width: 3,
// ),
// CircleAvatar(
// backgroundColor: secondaryColor,
// radius: 12.5,
// ),
// const SizedBox(
// width: 3,
// ),
// CircleAvatar(
// backgroundColor: secondaryColor,
// radius: 12.5,
// ),
// const SizedBox(
// width: 8,
// ),
// RichText(
// text: TextSpan(
// style: iconTextStyle.copyWith(color: textColor),
// children: [
// TextSpan(
// text: '49+ ',
// style: TextStyle(color: secondaryColor)),
// const TextSpan(
// text: 'People Reviewed this',
// ),
// ]))
// ],
// ),
// RichText(
// text: TextSpan(
// style: const TextStyle(
// color: Colors.black,
// fontFamily: 'Poppins',
// fontSize: 12,
// fontWeight: FontWeight.normal),
// text:
// "There are many variations of passages of Lorem Ipsum that available, but the majority have alteration.",
// children: [
// TextSpan(
// text: ' READ MORE',
// style: TextStyle(
// color: secondaryColor,
// ))
// ]),
// ),
// const Text('Pictures',
// style: TextStyle(
// color: Color(0xFF0D0D0D),
// fontSize: 18,
// fontFamily: 'Poppins',
// fontWeight: FontWeight.bold,
// )),
// Row(
// children: [
// Expanded(
// child: Container(
// margin: const EdgeInsets.only(right: 12),
// height: 210,
// color: secondaryColor,
// ),
// ),
// Expanded(
// child: Column(
// children: [
// Container(
// height: 100,
// margin: const EdgeInsets.only(bottom: 10),
// color: textColor,
// ),
// Container(
// height: 100,
// color: gold,
// ),
// ],
// ),
// ),
// ],
// ),
// ],
// ),
// ),
