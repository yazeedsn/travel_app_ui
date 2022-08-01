import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class AppFloatingActionBottom extends StatelessWidget {
  const AppFloatingActionBottom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: const EdgeInsets.only(top: 14.0),
      child: FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ImageIcon(AssetImage('assets/images/chatbot.png')),
            Text(
              'Chatbot',
              style: iconTextStyle.copyWith(fontSize: 8),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
