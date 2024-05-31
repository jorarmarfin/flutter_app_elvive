import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String imagePath;

  const CircularImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage(imagePath),
    );
  }
}