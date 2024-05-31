import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/data/artists.dart';
import 'package:flutter_app_elvive/data/live.dart';
import 'package:flutter_app_elvive/themes/app_theme.dart';
import 'components/components.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return const Stack(
            children: [
              BackgroundImage(),
              Column(
                children: [
                  MenuLogoPj(),
                  RoundedContainer(borderRadius: 40, color: appWhiteColor, textContainer: 'Artistas Invitados'),
                  SizedBox(height: 10,),
                  ArtistsList(),
                  SizedBox(height: 10,),
                  LiveList(),
                ],
              ),
              //Text('Home Screen'),
              // Puedes agregar más widgets aquí
            ],
          );
        }
      ),
      drawer: const CustomDrawer(),
    );
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
            return Container(
                margin: const EdgeInsets.all(10),
                decoration: appBoxDecoration,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(artistsPaths[index]),
                ));
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
        itemCount: livePaths.length,
        itemBuilder: (context, index) {
          return Container(
              margin: const EdgeInsets.all(10),
              decoration: appBoxDecoration,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(livePaths[index]),
              ));
        },
      ),
    );
  }
}

