import 'package:flutter/material.dart';

class NavbarWidget extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  NavbarWidget({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF2EEE9), // Warna latar belakang sesuai gambar
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            color: selectedIndex == 0 ? Colors.green[800] : Colors.black54,
            onPressed: () => onItemTapped(0),
          ),
          IconButton(
            icon: Icon(Icons.map),
            color: selectedIndex == 1 ? Colors.green[800] : Colors.black54,
            onPressed: () => onItemTapped(1),
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            color: selectedIndex == 2 ? Colors.green[800] : Colors.black54,
            onPressed: () => onItemTapped(2),
          ),
          IconButton(
            icon: Icon(Icons.settings),
            color: selectedIndex == 3 ? Colors.green[800] : Colors.black54,
            onPressed: () => onItemTapped(3),
          ),
        ],
      ),
    );
  }
}
