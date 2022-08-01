import 'package:flutter/material.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/components/shadowed_button.dart';
import 'package:travel_app/validators.dart';
import 'package:travel_app/consts.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

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
                  child: Form(
                    child: Form(
                      key: _formKey,
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
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Email Address"),
                            validator: (e) => emailValidator(e ?? ''),
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration:
                                const InputDecoration(hintText: "Password"),
                            validator: (password) =>
                                passwordValidator(password ?? ''),
                          ),
                          ShadowedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  Navigator.pushNamed(context, '/signin/main');
                                }
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
                  ),
                ),
                const Expanded(flex: 3, child: SizedBox(height: 1)),
              ],
            ),
          ),
          SafeArea(child: BackNavigationBar(color: textColor)),
        ],
      ),
    );
  }
}
