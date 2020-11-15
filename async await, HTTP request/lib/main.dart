import 'package:flutter/material.dart';
import 'package:uygulama2/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Deprem Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: SplashPage(),
    );
  }
}
