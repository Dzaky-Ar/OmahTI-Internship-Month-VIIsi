import 'package:flutter/material.dart';
import 'pages/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guideline OmahTI',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LandingPage(),
    );
  }
}

