import 'package:flutter/material.dart';
import '../widgets/PlantDetailWidget.dart';
import '../../../data/plants/modelresponses/PlantResponse.dart';

class PlantDetailScreen extends StatelessWidget {
  final PlantResponse plant;

  PlantDetailScreen({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plant.name, style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Share functionality
            },
          ),
        ],
      ),
      body: PlantDetailWidget(plant: plant),
    );
  }
}
