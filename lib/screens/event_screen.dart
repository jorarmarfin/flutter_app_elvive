import 'package:flutter/material.dart';
import 'package:flutter_app_elvive/data/live.dart';
import 'package:flutter_app_elvive/infrastructure/models/event_model.dart';
import 'package:google_fonts/google_fonts.dart';
import '../themes/app_theme.dart';
import 'components/components.dart';

class EventScreen extends StatelessWidget {
  static const String routeName = 'event_screen';
  final int id;
  const EventScreen({super.key, required this.id});
  @override
  Widget build(BuildContext context) {
    EventModel event = eventPaths[id];
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
                        child: Image.asset(event.img,),
                      )),
                  Text(event.description,style: style,),

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
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: CircularImage(imagePath: imgLogo),
        ),
      ],
    );
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
      child: IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: appWhiteColor,
            size: 40,
          )),
    );
  }
}
