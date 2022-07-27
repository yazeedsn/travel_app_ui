import 'package:flutter/material.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/components/shadowed_button.dart';
import 'package:travel_app/consts.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 42),
                  alignment: Alignment.bottomCenter,
                  child: Text('Reset Your Password',
                      textAlign: TextAlign.center, style: titleTextStyle),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const TextField(
                        decoration: InputDecoration(hintText: 'Email Address'),
                      ),
                      ShadowedButton(
                          onPressed: () {},
                          child: Text('Reset Your Password'.toUpperCase()))
                    ],
                  ),
                ),
              ),
              const Expanded(flex: 5, child: SizedBox(height: 1)),
            ],
          ),
          SafeArea(
            child: BackNavigationBar(title: '', color: textColor),
          )
        ],
      ),
    );
  }
}
