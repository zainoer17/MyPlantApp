import 'package:flutter/material.dart';

class PlantIllustrationWidget extends StatelessWidget {
  final String imageUrl;

  PlantIllustrationWidget({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
