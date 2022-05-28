import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sym/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Syrian Market',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: EasySplashScreen(
          logo: Image.asset('assets/images/logoo.png'),
          backgroundColor: const Color(0xFFFE5917),
          showLoader: false,
          loadingText: const Text(
            'Wellcome To Syrian Market Store',
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
          ),
          navigator: const HomePage(),
          durationInSeconds: 4,
        ));
  }
}
