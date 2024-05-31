import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: appOrangeColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: appOrangeColor,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Actualiza el estado de la aplicación
              // ...
              // Luego cierra el drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Actualiza el estado de la aplicación
              // ...
              // Luego cierra el drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}