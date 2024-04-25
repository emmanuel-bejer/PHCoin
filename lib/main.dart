import 'package:flutter/material.dart';
import 'package:phcoin/pages/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
          colorScheme: ColorScheme.light(
        background: Colors.grey.shade100,
        primary: Colors.blue,
        secondary: const Color.fromARGB(255, 4, 160, 208),
        tertiary: const Color.fromARGB(255, 74, 111, 185),
      )),
    );
  }
}
