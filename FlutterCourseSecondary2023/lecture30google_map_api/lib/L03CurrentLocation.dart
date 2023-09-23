import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lecture30google_map_api/L02Animate.dart';

class L03CurrentLocation {
  Future<Position> getMyCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
          Geolocator.requestPermission();
      print("Error WA910" + error.toString());
    });

    return await Geolocator.getCurrentPosition();
  }

  callLocation(
    List<Marker> markers,
    Completer<GoogleMapController> completer,
  ) {
    getMyCurrentLocation().then((value) {
      print("My Current Location");
      print(value.latitude.toString() + "," + value.longitude.toString());

// For add markers list
      markers.add(
        Marker(
          markerId: MarkerId("myloc"),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: InfoWindow(title: "My Current Location")));

      L02Animate()
          .animatecam(completer, LatLng(value.latitude, value.longitude));
    });
  }
}
