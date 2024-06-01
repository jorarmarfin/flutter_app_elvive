import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../providers/map_controller.dart';
import 'components/components.dart';

class MapsScreen extends ConsumerWidget {
  static const String routeName = 'maps_screen';
  const MapsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapController = ref.watch(mapControllerProvider);
    return Scaffold(
      floatingActionButton: const HomeButton(),
      body: Builder(builder: (context) {
        return Stack(
          children: [
            const BackgroundImage(),
            GoogleMap(
              onMapCreated: (GoogleMapController controller) {
                ref
                    .read(mapControllerProvider.notifier)
                    .setController(controller);
              },
              initialCameraPosition: const CameraPosition(
                target: LatLng(45.521563, -122.677433),
                zoom: 11.0,
              ),
            ),
            const SingleChildScrollView(
              child: Column(
                children: [MenuLogoPj(), Text('AAAAAAAAAAAAAAAAAAAAAAAA')],
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
