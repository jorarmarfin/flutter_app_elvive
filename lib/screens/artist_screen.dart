import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/data/artists.dart';
import 'package:flutter_app_elvive/infrastructure/models/artist_model.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/app_theme.dart';
import 'components/components.dart';

class ArtistScreen extends StatelessWidget {
  static const String routeName = 'artist_screen';
  final int id;
  const ArtistScreen({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    ArtistModel artist = artistsPaths[id];
    TextStyle style =GoogleFonts.mynerve(
        fontSize: 20,
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
                  Container(
                      margin: const EdgeInsets.all(10),
                      decoration: appBoxDecoration,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(artist.img,),
                      )),
                  Text(artist.title,style: style,),
                  Text(artist.description,style: style,),
                  Text(artist.website,style: style,),

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

