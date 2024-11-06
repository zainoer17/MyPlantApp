import 'package:flutter/material.dart';
import 'PlantStatsWidget.dart';
import 'PlantIllustrationWidget.dart';
import '../../../data/plants/modelresponses/PlantResponse.dart';

class PlantDetailWidget extends StatelessWidget {
  final PlantResponse plant;

  PlantDetailWidget({required this.plant});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image Layer
        Positioned.fill(
          child: Image.asset(
            'assets/images/${plant.imageUrl}', // Background image from the plant data
            fit: BoxFit.cover,
          ),
        ),
        
        // Foreground Content Layer
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 400), // Space for the background image to show at the top

              // Floating White Background for Details
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Plant Name and Description
                    Text(
                      plant.name,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green[800],
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      plant.description ?? "No description available",
                      style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    ),
                    SizedBox(height: 20),

                    // Plant Stats Widget
                    PlantStatsWidget(
                      age: plant.age,
                      height: plant.height,
                      co2: plant.co2,
                      oxygen: plant.oxygen,
                    ),
                    SizedBox(height: 5),
                    
                    // Map Image
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Location',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.green[800],
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 10,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/map.jpeg', // Replace with the path to your map image
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
