import 'package:flutter/material.dart';

class AddButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  AddButtonWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Color(0xFFF2EEE9), // Mengubah warna latar belakang
      child: Icon(
        Icons.add,
        color: Colors.black, // Mengubah warna ikon agar kontras dengan latar belakang
      ),
    );
  }
}
