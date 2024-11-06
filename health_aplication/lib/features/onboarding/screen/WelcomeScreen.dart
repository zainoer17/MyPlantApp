import 'package:flutter/material.dart';
import '../widgets/GetStartedButtonWidget.dart';
import 'package:health_aplication/core/constants/images.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Spacer(), // Mendorong elemen di bawah ke bagian bawah layar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Plantify',
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      offset: Offset(2, 2),
                      blurRadius: 3,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0), // Hanya padding kiri
              child: Text(
                'Make the planet healthy',
                textAlign: TextAlign.left,
                style: GoogleFonts.nunito(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ),
            SizedBox(height: 40),
            GetStartedButtonWidget(),
            SizedBox(height: 40), // Memberikan sedikit ruang dari bagian bawah layar
          ],
        ),
      ),
    );
  }
}