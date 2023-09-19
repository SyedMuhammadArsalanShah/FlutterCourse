import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class FirstMapScreen extends StatefulWidget {
  const FirstMapScreen({super.key});

  @override
  State<FirstMapScreen> createState() => _FirstMapScreenState();
}

class _FirstMapScreenState extends State<FirstMapScreen> {
  // google map controller instance
  Completer<GoogleMapController> completer = Completer();
  // camera position
  static final CameraPosition cameraPosition = CameraPosition(
      target: LatLng(24.905270433473422, 67.07981653688664), zoom: 14);

  List<Marker> markerpin = [];
  final List<Marker> listmarker = const [
    Marker(
        markerId: MarkerId("demoMapId"),
        position: LatLng(24.905270433473422, 67.07981653688664),
        infoWindow: InfoWindow(title: "My Location"))
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    markerpin.addAll(listmarker);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Google Camera"),
        ),
        body: GoogleMap(
          initialCameraPosition: cameraPosition,
          mapType: MapType.satellite,
          markers: Set.of(markerpin),
          onMapCreated: (GoogleMapController controller) {
            completer.complete(controller);
          },
        ));
  }
}
