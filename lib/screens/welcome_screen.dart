import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/welcome.png',
              fit: BoxFit.fitHeight, alignment: const Alignment(0.6, 0)),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 112),
                    alignment: Alignment.center,
                    child: Text('Explore the world',
                        textAlign: TextAlign.center,
                        style: welcomeScreenTitleStyle),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signin');
                        },
                        child: const Text(
                          "SIGN IN",
                          style: TextStyle(color: Color(0xFF2E2E2E)),
                        )),
                    const SizedBox(height: 24),
                    OutlinedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text(
                          "SIGN UP",
                        )),
                    const SizedBox(height: 44)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
