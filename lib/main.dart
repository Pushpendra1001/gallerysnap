import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const GallerySnapApp());
}

class GallerySnapApp extends StatelessWidget {
  const GallerySnapApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GallerySnap',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}