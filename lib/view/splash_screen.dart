import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/view/signin_screen.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  ScreenSplashScreen createState() => ScreenSplashScreen();
}

class ScreenSplashScreen extends State<ScreenSplash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Get.off(() => ScreenSignIn());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Let\'s get started!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.asset('lib/assets/img/logo.png'),
          ],
        ),
      ),
    );
  }
}
