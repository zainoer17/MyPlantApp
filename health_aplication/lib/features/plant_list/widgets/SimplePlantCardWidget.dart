import 'package:flutter/material.dart';
import '../../../data/plants/modelresponses/PlantResponse.dart';

class SimplePlantCardWidget extends StatelessWidget {
  final PlantResponse plant;

  SimplePlantCardWidget({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF2EEE9), // Warna latar belakang
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/${plant.imageUrl}', // Pastikan gambar ada di folder assets/images
              width: 80,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            plant.name,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
