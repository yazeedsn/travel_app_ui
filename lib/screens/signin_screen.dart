import 'package:flutter/material.dart';
import 'package:travel_app/consts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const Expanded(flex: 2, child: SizedBox(height: 1)),
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Text(
                          'SIGN IN',
                          textAlign: TextAlign.center,
                          style: titleTextStyle,
                        ),
                      ),
                      const TextField(
                        decoration: InputDecoration(hintText: "Email Address"),
                      ),
                      const TextField(
                        decoration: InputDecoration(hintText: "Password"),
                      ),
                      OutlinedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/signin');
                          },
                          child: const Text('SIGN IN')),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/reset');
                          },
                          child: const Text('Forgot your password?'))
                    ],
                  ),
                ),
                const Expanded(flex: 3, child: SizedBox(height: 1)),
              ],
            ),
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
