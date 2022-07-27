import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/components/shadowed_button.dart';
import 'package:travel_app/consts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BackNavigationBar(title: 'Check Out', color: textColor),
          const SizedBox(height: 40),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Placeholder(fallbackHeight: 200),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF6200EE).withOpacity(0.14),
                    offset: const Offset(0, 10),
                    blurRadius: 20,
                  ),
                ]),
            child: Column(
              children: [
                buildTextField('Card Number'),
                buildTextField('Card Holder'),
                buildTextField('Expire Date'),
                const SizedBox(height: 52),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
            child: ShadowedButton(
                onPressed: () {}, child: const Text('Confirm Payment')),
          )
        ],
      ),
    );
  }

  Padding buildTextField(String hintText) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: TextField(
        decoration: InputDecoration(
          filled: false,
          contentPadding: EdgeInsets.zero,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFFAAB2B7),
            fontSize: 16,
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD7DDE1)),
          ),
        ),
      ),
    );
  }
}
