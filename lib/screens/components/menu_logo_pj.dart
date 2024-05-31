import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/screens/components/components.dart';

import '../../themes/app_theme.dart';

class MenuLogoPj extends StatelessWidget {
  const MenuLogoPj({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MenuButton(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 30.0),
          child: CircularImage(imagePath: imgLogo),
        ),

      ],);
  }
}
class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: IconButton(onPressed: () {
        Scaffold.of(context).openDrawer();
      }, icon:const Icon(Icons.menu,color: appWhiteColor,size: 40,)),
    );
  }
}