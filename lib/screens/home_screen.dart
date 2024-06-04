import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/data/artists.dart';
import 'package:flutter_app_elvive/data/live.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'components/components.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  GestureDetector(
                      onTap: _openGoogleForm,
                      child: const RoundedContainer(
                          borderRadius: 40,
                          color: appOrangeColor,
                          textColor: appWhiteColor,
                          textContainer: 'Inscríbete para las carpas')),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: _openFacebook,
                          icon: SvgPicture.asset(iconFacebook, width: 50,)),
                      const SizedBox( width: 10,),
                      IconButton(
                          onPressed: _openSpotify,
                          icon: SvgPicture.asset(iconSpotify, width: 50,)),
                      const SizedBox( width: 10,),
                      IconButton(
                          onPressed: _openYoutube,
                          icon: SvgPicture.asset(iconYoutube, width: 50,)),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const RoundedContainer(
                      borderRadius: 40,
                      color: appWhiteColor,
                      textContainer: 'Artistas Invitados'),
                  const SizedBox(
                    height: 5,
                  ),
                  const ArtistsList(),
                  const RoundedContainer(
                      borderRadius: 40,
                      color: appWhiteColor,
                      textContainer: 'Eventos'),
                  const SizedBox(
                    height: 5,
                  ),
                  const LiveList(),
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

  Future<void> _openGoogleForm() async {
    final Uri url = Uri.parse('https://forms.gle/ZqaYPELuFXenDmY29');
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }
  Future<void> _openFacebook() async {
    final Uri url = Uri.parse('https://www.facebook.com/ViveChosica');
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }
  Future<void> _openYoutube() async {
    final Uri url = Uri.parse('https://www.youtube.com/playlist?list=PLIo20jQMxRcE_r3fqbEO3X4tkrBSGTw_o');
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }
  Future<void> _openSpotify() async {
    final Uri url = Uri.parse('https://open.spotify.com/playlist/2teQhld2sr3n3eEg9jUBuu?si=808519c9010042a2&fbclid=IwZXh0bgNhZW0CMTAAAR3rJSuzk37h026qgYc9aMGmyPAbE2uozUBWe1U36QaDX9snB1y7-A8Brpg_aem_ATGl9EWvHw_2_wO-nhcTIPuzd7mFxwVfhc1i6wwyR2mOwTM39W3GWLnmrnmQWx-FwCjYl4lcajtNjGyCswELNTiT&nd=1&dlsi=dd92ad3e94da4c7e');
    if (await launchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'No se pudo abrir $url';
    }
  }
}

class ArtistsList extends StatelessWidget {
  const ArtistsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: artistsPaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed('artist_screen',
                  pathParameters: {'id': index.toString()});
            },
            child: Container(
                margin: const EdgeInsets.all(10),
                decoration: appBoxDecoration,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(artistsPaths[index].img),
                )),
          );
        },
      ),
    );
  }
}

class LiveList extends StatelessWidget {
  const LiveList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: eventPaths.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed('event_screen',
                  pathParameters: {'id': index.toString()});
            },
            child: Container(
                margin: const EdgeInsets.all(10),
                decoration: appBoxDecoration,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(eventPaths[index].img),
                )),
          );
        },
      ),
    );
  }
}
