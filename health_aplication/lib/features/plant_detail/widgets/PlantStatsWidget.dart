import 'package:flutter/material.dart';

class PlantStatsWidget extends StatelessWidget {
  final String age;
  final String height;
  final String co2;
  final String oxygen;

  PlantStatsWidget({
    required this.age,
    required this.height,
    required this.co2,
    required this.oxygen,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatCard('Age', age, 'assets/images/detail1.jpeg'),
              _buildStatCard('Height', height, 'assets/images/detail2.jpeg'),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatCard('CO₂ Produced', co2, 'assets/images/detail3.jpeg'),
              _buildStatCard('O₂ Absorbed', oxygen, 'assets/images/detail4.jpeg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(String label, String value, String imageUrl) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 2,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3), // Slight dark overlay
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.grey[300], fontSize: 14),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
