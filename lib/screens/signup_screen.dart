import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              const Expanded(flex: 2, child: SizedBox(height: 1)),
              Expanded(
                flex: 6,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: Text(
                          'Create Your Account',
                          textAlign: TextAlign.center,
                          style: titleTextStyle,
                        ),
                      ),
                      const TextField(
                          decoration: InputDecoration(hintText: 'Name')),
                      const TextField(
                          decoration:
                              InputDecoration(hintText: 'Email Address')),
                      const TextField(
                          decoration: InputDecoration(hintText: 'Password')),
                      OutlinedButton(
                          onPressed: () {}, child: const Text('SIGN UP')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',
                              style: textButtonStyle),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/signin');
                              },
                              child: Text('SIGN IN',
                                  style: textButtonStyle.copyWith(
                                      color: secondaryColor)))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const Expanded(flex: 3, child: SizedBox(height: 1)),
            ],
          ),
          SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: textColor)),
            ),
          )
        ],
      ),
    );
  }
}
