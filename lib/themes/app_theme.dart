import 'package:flutter/material.dart';

const Color appWhiteColor = Color(0xFFFFFFFF);
const Color appOrangeColor = Color(0xFFE3793B);
const Color appBlueColor = Color(0xFF3F3F92);
const imgIntro = 'assets/images/intro.png';
const imgFondo = 'assets/images/fondo.png';
const imgLogo = 'assets/images/logo500x500.png';
const iconFacebook = 'assets/icons/icon_facebook.svg';
const iconSpotify = 'assets/icons/icon_spotify.svg';
const iconYoutube = 'assets/icons/icon_youtube.svg';
class AppTheme {
  AppTheme();
  ThemeData getTheme()=>ThemeData(
    useMaterial3: true,
    colorSchemeSeed:const Color(0xFFC6302C)
  );

}
final BoxDecoration appBoxDecoration = BoxDecoration(
  color: appWhiteColor,
  borderRadius: BorderRadius.circular(20),
  border: Border.all(
    color: appWhiteColor,
    width: 5,
  ),
);
final BoxDecoration appBoxDecorationVideo = BoxDecoration(
  color: appOrangeColor,
  borderRadius: BorderRadius.circular(10),
  border: Border.all(
    color: appOrangeColor,
    width: 1,
  ),
);