import 'package:commerce_app/pages/sign_in_view/sign_in_email.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(
          context, MaterialPageRoute(builder: (context) => const SignInView()), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF8E6CEF),
      body: Center(
        child: Image.asset(
          "assets/images/splash_image.png",
          height: 80,
        ),
      ),
    );
  }
}
