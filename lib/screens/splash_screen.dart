import 'package:flutter/material.dart';
import 'camera_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CameraScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {

  return Scaffold(
    body: Stack(
    fit: StackFit.expand,
    children: [
      Image.asset(
      'assets/splash/gallery.jpg',
      fit: BoxFit.cover,
      ),
      Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text(
          'GallerySnap',
          style: TextStyle(
          color: Colors.white,
          fontSize: 48,
          fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const CircularProgressIndicator(
          color: Colors.white,
        ),
        ],
      ),
      ),
    ],
    ),
  );
  }
}