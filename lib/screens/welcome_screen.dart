// welcome_screen.dart
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF4B0082),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/weather_icon.png', // Your 3D icon image
              height: 180,
            ),
            const SizedBox(height: 30),
            const Text(
              'Weather',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Forecasts',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/forecast');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text(
                'Get Start',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
