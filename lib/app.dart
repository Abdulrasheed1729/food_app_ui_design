import 'package:flutter/material.dart';
import 'package:food_ui/constants.dart';
import 'package:food_ui/screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food UI',
      theme: ThemeData(
        primaryColor: kAccentColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kAccentColor),
      ),
      home: const SplashScreen(),
    );
  }
}
