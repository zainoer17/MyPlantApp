import 'package:flutter/material.dart';

class WelcomeIllustrationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/welcome_background.png'), // sesuai gambar latar pada mockup
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}