import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/pastoral.dart';
import '../themes/app_theme.dart';
import 'components/components.dart';

class PastoralScreen extends StatelessWidget {
  static const String routeName = 'pastoral_screen';
  const PastoralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle styleTitle = GoogleFonts.mynerve(
        fontSize: 30, color: appWhiteColor, fontWeight: FontWeight.bold);
    TextStyle styleText = GoogleFonts.mynerve(
        fontSize: 25, color: appWhiteColor, fontWeight: FontWeight.bold);
    return Scaffold(
      floatingActionButton: const HomeButton(),
      body: Builder(builder: (context) {
        return Stack(
          children: [
            const BackgroundImage(),
            SingleChildScrollView(
              child: Column(
                children: [
                  const MenuLogoPj(),
                  Container(
                      margin: const EdgeInsets.all(10),
                      decoration: appBoxDecoration,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(imgLogoPj),
                      )),
                  Text('PASTORAL JUVENIL', style: styleTitle),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(aboutMe, style: styleText),
                  ),
                  Text('Que hacemos', style: styleTitle),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(whatDoWeDo, style: styleText),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                ],
              ),
            ),
            //Text('Home Screen'),
            // Puedes agregar más widgets aquí
          ],
        );
      }),
      drawer: const CustomDrawer(),
    );
  }
}