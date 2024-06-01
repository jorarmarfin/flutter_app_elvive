import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeButton extends StatelessWidget {
  final double latitude = -12.023887;
  final double longitude = -76.8860689;

  const HomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _openGoogleMaps,
          backgroundColor: appOrangeColor,
          child:const Icon(Icons.location_on_rounded, color: appWhiteColor),
        ),
        const SizedBox(height: 10,),
        FloatingActionButton(
          onPressed: () => context.pushNamed('home_screen'),
          backgroundColor: appOrangeColor,
          child:const Icon(Icons.home, color: appWhiteColor),
        ),
      ],
    );
  }//https://www.google.com/maps/place//@-12.023887,-76.8860689,18z?entry=ttu
  Future<void> _openGoogleMaps() async {
    final Uri url = Uri.parse('https://www.google.com/maps/search/?api=1&query=$latitude,$longitude&z=18.28');
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }

}