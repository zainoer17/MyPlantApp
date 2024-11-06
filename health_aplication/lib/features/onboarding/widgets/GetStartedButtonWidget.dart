import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_aplication/core/utils/route_utils.dart';

class GetStartedButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // Warna latar belakang tombol putih
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            padding: EdgeInsets.symmetric(vertical: 14),
            elevation: 4, // Memberikan sedikit bayangan
          ),
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              RouteUtils.plantList,
              (route) => false,
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pet a plant',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromARGB(255, 0, 0, 0), // Warna teks hijau gelap atau sesuai
                ),
              ),
              SizedBox(width: 200),
              Icon(
                Icons.arrow_forward,
                color: const Color.fromARGB(255, 0, 0, 0), // Warna ikon sesuai dengan teks
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
