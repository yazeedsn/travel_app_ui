import 'package:flutter/material.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/components/shadowed_button.dart';
import 'package:travel_app/validators.dart';
import 'package:travel_app/consts.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                  child: Form(
                    key: _formKey,
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
                        TextFormField(
                          decoration:
                              const InputDecoration(hintText: 'Email Address'),
                          validator: (e) => emailValidator(e ?? ''),
                        ),
                        TextFormField(
                          decoration:
                              const InputDecoration(hintText: 'Password'),
                          validator: (password) =>
                              passwordValidator(password ?? ''),
                        ),
                        ShadowedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {}
                            },
                            child: const Text('SIGN UP')),
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
              ),
              const Expanded(flex: 3, child: SizedBox(height: 1)),
            ],
          ),
          SafeArea(
            child: BackNavigationBar(color: textColor),
          )
        ],
      ),
    );
  }
}
