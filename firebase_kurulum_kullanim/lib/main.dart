import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'auth_type_selector.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); //firebase.i açıp çalıştırması için
  runApp(MyApp());
}

/// Uygulamanın başlangıç noktası.
///
/// Bir [Material App] döndürür.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Örnekleme',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthTypeSelector(),
    );
  }
}
