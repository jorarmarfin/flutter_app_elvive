import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/data/prayer.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../providers/youtube_player_controller_provider.dart';
import '../themes/app_theme.dart';
import 'components/components.dart';

class GodScreen extends ConsumerWidget {
  static const String routeName = 'god_screen';
  const GodScreen({super.key});

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final controller = ref.watch(videoControllerProvider('Dd7YbWyPcQo'));
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
                  YoutubePlayer(
                    controller: controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.orange,
                  ),
                  Text('ORACIÓN', style: styleTitle),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(holyHour, style: styleText),
                  ),
                  Text('ORACIÓN JUVENIL', style: styleTitle),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(youngPrayer, style: styleText),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(virgenMaryPrayer, style: styleText),
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