import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';
import 'package:go_router/go_router.dart';

class HomeButton extends StatelessWidget {

  const HomeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () => context.pushNamed('maps_screen'),
          backgroundColor: appOrangeColor,
          child:const Icon(Icons.location_on, color: appWhiteColor),
        ),
        const SizedBox(height: 10,),
        FloatingActionButton(
          onPressed: () => context.pushNamed('home_screen'),
          backgroundColor: appOrangeColor,
          child:const Icon(Icons.home, color: appWhiteColor),
        ),
      ],
    );
  }

}