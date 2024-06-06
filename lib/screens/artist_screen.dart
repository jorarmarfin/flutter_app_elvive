import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/data/artists.dart';
import 'package:flutter_app_elvive/infrastructure/models/artist_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../providers/youtube_player_controller_provider.dart';
import '../themes/app_theme.dart';
import 'components/components.dart';

class ArtistScreen extends ConsumerWidget {
  static const String routeName = 'artist_screen';
  final int id;
  const ArtistScreen({super.key, required this.id});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ArtistModel artist = artistsPaths[id];
    final controller = ref.watch(videoControllerProvider(artist.videoId));
    TextStyle style =GoogleFonts.mynerve(
        fontSize: 25,
        color: appWhiteColor,
        fontWeight: FontWeight.bold);
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
                  ImageArtist(artist: artist),
                  YoutubePlayer(
                    controller: controller,
                    showVideoProgressIndicator: true,
                    progressIndicatorColor: Colors.orange,
                  ),
                  Text(artist.title,style: style,),
                  Text(artist.description,style: style,),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        _openWebsite(artist.website);
                      },
                      child: const Text('Visitar Sitio Web'),
                    ),

                  )],
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
  Future<void> _openWebsite(String website) async {
    final Uri url = Uri.parse(website);
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }
}

class ImageArtist extends StatelessWidget {
  const ImageArtist({
    super.key,
    required this.artist,
  });

  final ArtistModel artist;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        decoration: appBoxDecoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(artist.img,),
        ));
  }
}

