import 'package:commerce_app/pages/home_view/home_state.dart';
import 'package:commerce_app/pages/profile_view/pages_profile/adress_view.dart';
import 'package:commerce_app/pages/splash_screen/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const SplashView(),
    );
  }
}
