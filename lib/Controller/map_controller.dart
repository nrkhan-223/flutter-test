import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  Completer<GoogleMapController> controllers = Completer();
  List<Marker> marker = [];
  List<Marker> list = [];
  int id=1;
  CameraPosition camera =
      const CameraPosition(target: LatLng(87.4760917, 24.997923), zoom: 14);

  Future<Position> getUserLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      if (kDebugMode) {
        print("error$error");
      }
    });

    return await Geolocator.getCurrentPosition();
  }
  loadLocation() {
    getUserLocation().then((value) async {
      if (kDebugMode) {
        print("my location");
      }
      if (kDebugMode) {
        print("${value.longitude}  ${value.latitude}");
      }
      marker.add(Marker(
          markerId: const MarkerId("location"),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: const InfoWindow(title: "MY LOCATION"),icon: BitmapDescriptor.defaultMarkerWithHue(
          BitmapDescriptor.hueBlue)));
      update();
      CameraPosition cameraPosition = CameraPosition(
          target: LatLng(value.latitude, value.longitude), zoom: 16.2);
      final GoogleMapController controller = await controllers.future;
      controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      update();
    });
  }
}
