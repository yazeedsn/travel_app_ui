import 'package:flutter/material.dart';
import 'package:travel_app/components/back_navigation_bar.dart';
import 'package:travel_app/components/shadowed_button.dart';
import 'package:travel_app/validators.dart';
import 'package:travel_app/consts.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormFieldState>();

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
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 42),
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Reset Your Password',
                    textAlign: TextAlign.center,
                    style: titleTextStyle,
                  ),
                ),
              ),
              Expanded(
                flex: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        key: _formKey,
                        decoration:
                            const InputDecoration(hintText: 'Email Address'),
                        validator: (e) => emailValidator(e ?? ''),
                      ),
                      const SizedBox(height: 26),
                      ShadowedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {}
                          },
                          child: Text('Reset Your Password'.toUpperCase()))
                    ],
                  ),
                ),
              ),
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
