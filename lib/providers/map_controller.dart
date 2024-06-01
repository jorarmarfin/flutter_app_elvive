import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends StateNotifier<GoogleMapController?> {
  MapController() : super(null);

  void setController(GoogleMapController controller) {
    state = controller;
  }
}

final mapControllerProvider = StateNotifierProvider<MapController, GoogleMapController?>((ref) {
  return MapController();
});
