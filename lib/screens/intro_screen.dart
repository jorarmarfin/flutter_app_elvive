import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../themes/app_theme.dart';

class IntroScreen extends StatelessWidget{
  static const String routeName = 'intro_screen';
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: (){
            context.pushNamed('home_screen');
          },
          child: Image.asset(
            imgIntro,
            fit: BoxFit.cover,
          ),
        )
      ));
  }
}