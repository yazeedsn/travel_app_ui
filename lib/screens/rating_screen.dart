import 'package:flutter/material.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/components/shadowed_button.dart';
import 'package:travel_app/components/rating_bar.dart';
import 'package:travel_app/consts.dart';

class RatingScreen extends StatelessWidget {
  const RatingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 80, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Write a Review', style: headerStyle),
                const Expanded(
                  child: RatingBar(),
                ),
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const TextField(
                          decoration: InputDecoration(
                        hintText: 'Title',
                      )),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 24),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.top,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 18),
                              hintText: 'Review',
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            maxLength: null,
                            maxLines: null,
                            expands: true,
                          ),
                        ),
                      ),
                      ShadowedButton(
                          onPressed: () {}, child: const Text('Rate'))
                    ],
                  ),
                ),
              ],
            ),
          ),
          BackNavigationBar(color: textColor),
        ],
      ),
    );
  }
}
