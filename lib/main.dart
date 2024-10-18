import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:sample/core/hive.dart';
import 'package:sample/view/splash_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CartItemAdapter());
  await Hive.openBox<CartItem>('cartItems');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const ScreenSplash(),
    );
  }
}
