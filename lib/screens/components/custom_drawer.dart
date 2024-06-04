import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle style =GoogleFonts.mynerve(
        fontSize: 20,
        color: appWhiteColor,
        fontWeight: FontWeight.bold);
    return Drawer(
      backgroundColor: appOrangeColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: appOrangeColor,
            ),
            child: Image(image: AssetImage(imgLogoPj)),
          ),
          ListTile(
            leading:const Icon(Icons.home,color: appWhiteColor,size: 40,),
            title: Text('Inicio',style: style,),
            onTap: (){context.pushNamed('home_screen');},
          ),
          ListTile(
            leading:const Icon(Icons.settings_accessibility,color: appWhiteColor,size: 40,),
            title: Text('Pastoral Juvenil',style: style,),
            onTap: () {
              context.pushNamed('pastoral_screen');
            },
          ),


        ],
      ),
    );
  }
}