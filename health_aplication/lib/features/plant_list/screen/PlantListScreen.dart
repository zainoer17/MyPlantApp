import 'package:flutter/material.dart';
import '../widgets/SimplePlantCardWidget.dart';
import '../widgets/PlantCardWidget.dart';
import 'package:health_aplication/features/plant_list/widgets/NavbarButtonWidget.dart'; // Pastikan mengimpor NavbarWidget yang benar
import 'package:health_aplication/features/plant_list/widgets/AddButtonWidget.dart';
import '../../../data/plants/dummy/DummyPlants.dart';

class PlantListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 60, // Tinggi toolbar yang sedikit lebih besar agar lebih seimbang
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Pet a plant',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            AddButtonWidget(
              onPressed: () {
                // Aksi untuk menambah tanaman baru
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16), // Memberikan jarak antara AppBar dan konten
              Text(
                'Featured plants',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16),
              
              // Daftar tanaman unggulan (Featured plants)
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummyPlants.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: SimplePlantCardWidget(plant: dummyPlants[index]),
                    );
                  },
                ),
              ),
              
              SizedBox(height: 24),
              Text(
                'My plants',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'Plants all over the world',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 16),
              
              // Daftar tanaman "My plants"
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: dummyPlants.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: PlantCardWidget(plant: dummyPlants[index]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: NavbarWidget(
          selectedIndex: 0,
          onItemTapped: (index) {
            // Aksi saat ikon navbar ditekan
          },
        ),
      ),
    );
  }
}
