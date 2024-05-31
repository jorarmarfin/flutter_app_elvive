import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imgFondo), // Asegúrate de tener esta imagen en tu carpeta de assets
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}