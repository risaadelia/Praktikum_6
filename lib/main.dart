import 'package:flutter/material.dart';
import 'package:praktikumenamaslab/profil_page.dart';
import 'package:praktikumenamaslab/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Praktikum 6',
      theme: ThemeData(
        
      ),
      home: const LoginPage(),
    );
  }
}