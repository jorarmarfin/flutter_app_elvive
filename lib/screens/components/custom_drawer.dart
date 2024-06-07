import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    const version = 'Versión 1.0.7';
    TextStyle style =GoogleFonts.mynerve(
        fontSize: 20,
        color: appWhiteColor,
        fontWeight: FontWeight.bold);
    return Drawer(
      backgroundColor: appOrangeColor,
      child: Column(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: appOrangeColor,
            ),
            child: Image(image: AssetImage(imgLogoPj)),
          ),
          ListTile(
            leading:const Icon(Icons.home,color: appWhiteColor,size: 40,),
            title: Text('Vive 2024',style: style,),
            onTap: (){context.pushNamed('home_screen');},
          ),
          ListTile(
            leading:const Icon(Icons.settings_accessibility,color: appWhiteColor,size: 40,),
            title: Text('Quienes somos',style: style,),
            onTap: () {
              context.pushNamed('pastoral_screen');
            },
          ),
          ListTile(
            leading:const Icon(Icons.add,color: appWhiteColor,size: 40,),
            title: Text('Adoración al Santísimo',style: style,),
            onTap: () {
              context.pushNamed('god_screen');
            },
          ),
          const Spacer(),
          const Text(version, style: TextStyle(color: appWhiteColor, ))


        ],
      ),
    );
  }
}