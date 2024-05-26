import 'package:flutter/material.dart';
import 'package:flutter_test1/Controller/map_controller.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreen();
}

class _MapScreen extends State<MapScreen> {
  var controller = Get.put(MapController());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.loadLocation();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          title: "Map screen".text.make(),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 5.0,
          backgroundColor: Colors.white,
          onPressed: () async {
            controller.loadLocation();
            setState(() {});
          },
          child: const Icon(
            Icons.my_location,
            color: Colors.black,
          ),
        ),
        body: StreamBuilder(
            stream: null,
            builder: (context, snapshot) {
              return GoogleMap(
                initialCameraPosition: controller.camera,
                mapType: MapType.hybrid,
                onTap: (LatLng latlng) {
                  print("latling is: $latlng");
                  Marker newMarker = Marker(
                      markerId: MarkerId("${controller.id}"),
                      position: LatLng(latlng.latitude, latlng.longitude),
                      infoWindow:  InfoWindow(title: "position:${controller.id}"),
                      icon: BitmapDescriptor.defaultMarkerWithHue(
                          BitmapDescriptor.hueRed));
                  controller.marker.add(newMarker);
                  controller.id= controller.id+1;
                  setState(() {});
                },
                myLocationButtonEnabled: true,
                zoomControlsEnabled: false,
                markers: controller.marker.map((e)=>e).toSet(),
                compassEnabled: true,
                onMapCreated: (GoogleMapController controller2) {
                  controller.controllers.complete(controller2);
                },
              );
            }),
      ),
    );
  }
}
