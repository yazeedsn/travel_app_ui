import 'package:flutter/material.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/components/shadowed_button.dart';
import 'package:travel_app/components/app_bottom_navigation_bar.dart';
import 'package:travel_app/components/floating_action_bottom.dart';
import 'package:travel_app/consts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: const AppFloatingActionBottom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AppBottomNavigationBar(
          currentIndex: 3,
          onTap: (index) {
            Navigator.pop(context, index);
            Navigator.pop(context, index);
          }),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BackNavigationBar(
                  title: Text('Check Out', style: headerStyle),
                  color: textColor),
              const SizedBox(height: 40),
              Stack(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 200),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.42,
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                            boxShadow: [
                              BoxShadow(
                                color:
                                    const Color(0xFF6200EE).withOpacity(0.14),
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
                    ],
                  ),
                  Container(
                    width: double.maxFinite,
                    height: 200,
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 30),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/images/effects.png')),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF6200EE).withOpacity(0.14),
                          offset: const Offset(0, 10),
                          blurRadius: 20,
                        ),
                      ],
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFF9025FC),
                            Color(0xFF44C7B3),
                          ]),
                    ),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: 50,
                                  height: 15,
                                  child: Image.asset('assets/images/visa.png')),
                              const SizedBox(height: 25),
                              const Text(
                                '3384 4003 4885 2334',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 30),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'CARD HOLDER',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Text(
                                        'Marius Møller',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(width: 60),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'EXP DATE',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 9,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 12),
                                      Text(
                                        '19/05',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 20, right: 20, top: 30, bottom: 40),
                child: ShadowedButton(
                    onPressed: () {}, child: const Text('Confirm Payment')),
              )
            ],
          ),
        ),
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
