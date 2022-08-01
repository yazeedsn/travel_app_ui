import 'package:flutter/material.dart';
import 'package:travel_app/components/app_bottom_navigation_bar.dart';
import 'package:travel_app/components/floating_action_bottom.dart';
import 'package:travel_app/components/image_card.dart';
import 'package:travel_app/components/profile_image.dart';
import 'package:travel_app/components/horizontal_list.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/screens/rating_screen.dart';
import 'package:travel_app/consts.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const AppFloatingActionBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: 3,
          onTap: (index) {
            Navigator.pop(context, index);
          }),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Image.asset(
                  'assets/images/hotel.png',
                  fit: BoxFit.cover,
                  alignment: const Alignment(-0.7, 0),
                ),
              ),
              const Expanded(flex: 3, child: SizedBox())
            ],
          ),
          SizedBox.expand(
            child: DraggableScrollableSheet(
              initialChildSize: 0.55,
              minChildSize: 0.55,
              maxChildSize: 0.8,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return SingleChildScrollView(
                  controller: scrollController,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.94,
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 40),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                ImageIcon(
                                  const AssetImage('assets/images/star.png'),
                                  color: gold,
                                  size: 13,
                                ),
                                const SizedBox(width: 4),
                                ImageIcon(
                                  const AssetImage('assets/images/star.png'),
                                  color: gold,
                                  size: 13,
                                ),
                                const SizedBox(width: 4),
                                ImageIcon(
                                  const AssetImage('assets/images/star.png'),
                                  color: gold,
                                  size: 13,
                                ),
                                const SizedBox(width: 4),
                                ImageIcon(
                                  const AssetImage('assets/images/star.png'),
                                  color: gold,
                                  size: 13,
                                ),
                                const SizedBox(width: 4),
                                ImageIcon(
                                  const AssetImage('assets/images/star.png'),
                                  color: gold,
                                  size: 13,
                                ),
                                const SizedBox(width: 14),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RatingScreen()));
                                  },
                                  child: Text(
                                    'Write a Review',
                                    style: TextStyle(
                                      color: Colors.transparent,
                                      fontSize: 10,
                                      shadows: [
                                        Shadow(
                                            offset: const Offset(0, -2),
                                            color: gold)
                                      ],
                                      decoration: TextDecoration.underline,
                                      decorationStyle:
                                          TextDecorationStyle.solid,
                                      decorationColor: gold,
                                      decorationThickness: 2,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                const ProfileImage(
                                  size: 26,
                                  imagePath: 'assets/images/profile1.jpg',
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const ProfileImage(
                                  size: 26,
                                  imagePath: 'assets/images/profile2.jpg',
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const ProfileImage(
                                  size: 26,
                                  imagePath: 'assets/images/profile3.jpg',
                                ),
                                const SizedBox(
                                  width: 3,
                                ),
                                const ProfileImage(
                                  size: 26,
                                  imagePath: 'assets/images/profile.jpg',
                                ),
                                const SizedBox(
                                  width: 8,
                                ),
                                RichText(
                                    text: TextSpan(
                                        style: iconTextStyle.copyWith(
                                            color: textColor),
                                        children: [
                                      TextSpan(
                                          text: '49+ ',
                                          style:
                                              TextStyle(color: secondaryColor)),
                                      const TextSpan(
                                        text: 'People Reviewed this',
                                      ),
                                    ]))
                              ],
                            ),
                            const SizedBox(height: 18),
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
                          ],
                        ),
                        const Expanded(flex: 2, child: SizedBox(height: 1)),
                        const Text('Pictures',
                            style: TextStyle(
                              color: Color(0xFF0D0D0D),
                              fontSize: 18,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            )),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 200,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      image: const DecorationImage(
                                          image: AssetImage(
                                              'assets/images/s1.jpg'),
                                          fit: BoxFit.cover),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(5)),
                                      boxShadow: [
                                        BoxShadow(
                                            color: const Color(0x000000ff)
                                                .withOpacity(0.15),
                                            offset: const Offset(0, 1),
                                            blurRadius: 15)
                                      ]),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 100,
                                        margin:
                                            const EdgeInsets.only(bottom: 10),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/s2.jpg'),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(5)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: const Color(0xFF8A9DF8)
                                                      .withOpacity(0.6),
                                                  offset: const Offset(0, 3),
                                                  blurRadius: 6)
                                            ]),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        height: 100,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            image: const DecorationImage(
                                                image: AssetImage(
                                                    'assets/images/s3.jpg'),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(5)),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: const Color(0xFF8A9DF8)
                                                      .withOpacity(0.6),
                                                  offset: const Offset(0, 3),
                                                  blurRadius: 6)
                                            ]),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Expanded(flex: 1, child: SizedBox(height: 1)),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.19,
                          width: MediaQuery.of(context).size.width,
                          child: HorizontalList(
                            padding: const EdgeInsets.only(top: 16),
                            title: Text(
                              'Other Places',
                              style: headerStyle,
                            ),
                            itemCount: 4,
                            itemBuilder: (buildContext, index) => ImageCard(
                              padding: const EdgeInsets.only(right: 14),
                              tag: cities1[index]['name'] ?? '',
                              image: Image.asset(cities1[index]['image'] ?? ''),
                            ),
                          ),
                        ),
                        const Expanded(flex: 2, child: SizedBox(height: 1)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          BackNavigationBar(
              title: Text('Hotel Details',
                  style: headerStyle.copyWith(color: Colors.white))),
        ],
      ),
    );
  }
}
