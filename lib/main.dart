import 'package:flutter/material.dart';
import 'package:travel_app/screens/main_screen.dart';
import 'package:travel_app/screens/welcome_screen.dart';
import 'package:travel_app/screens/signin_screen.dart';
import 'package:travel_app/screens/signup_screen.dart';
import 'package:travel_app/screens/reset_password_screen.dart';
import 'package:travel_app/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          outlinedButtonTheme: outlinedButtonThemeData,
          inputDecorationTheme: inputDecorationTheme,
          textButtonTheme: textButtonThemeData,
          bottomNavigationBarTheme: bottomNavigationBarTheme),
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
        '/signin': (context) => SignInScreen(),
        '/signup': (context) => SignUpScreen(),
        '/reset': (context) => ResetPasswordScreen(),
        '/signin/main': (context) => const MainScreen(),
      },
    );
  }
}
