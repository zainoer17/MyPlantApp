import 'package:flutter/material.dart';
import 'PlantCardWidget.dart';
import '../../../data/plants/dummy/DummyPlants.dart'; // Misalkan ada data dummy

class PlantListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      itemCount: dummyPlants.length,
      itemBuilder: (context, index) {
        return PlantCardWidget(plant: dummyPlants[index]);
      },
    );
  }
}
