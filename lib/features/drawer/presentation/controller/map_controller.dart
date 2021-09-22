import 'dart:async';
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iam_hungry2/core/utils/helper_methods.dart';
import 'package:location/location.dart' as locationPackage;

class MapController extends GetxController {
  Completer<GoogleMapController> mapController = Completer();
  var lat = 0.0.obs, long = 0.0.obs;
  List<Marker> markers = [];
  late BitmapDescriptor customMarker;
  final Set<Polygon> polygon = HashSet<Polygon>();
  final location = locationPackage.Location();
  final bounderPoints = <LatLng>[
    LatLng(30.016279, 31.206043),
    LatLng(29.993721, 31.144513),
    LatLng(29.988269, 31.148259),
    LatLng(30.010668, 31.207217),
    LatLng(30.016279, 31.206043),
  ];

  final searchTEC = TextEditingController(text: ''),
      placeNameTEC = TextEditingController(text: ''),
      streetTEC = TextEditingController(text: ''),
      buildingTEC = TextEditingController(text: ''),
      floorTEC = TextEditingController(text: '');

  @override
  void onInit() async {
    print('lat1 = ${lat.value}');
    print('long1 = ${long.value}');
    await location.getLocation().then(
      (value) {
        lat.value = value.latitude!;
        long.value = value.longitude!;
      },
    );
    print('lat = ${lat.value}');
    print('long = ${long.value}');
    await animateToCurrentLocation(
      mapController: mapController,
      initialPosition: LatLng(lat.value, long.value),
    );
    addPolygon();
    super.onInit();
  }

  void onSubmitSearchTF() async {
    await searchMap(mapController: mapController, searchTEC: searchTEC)
        .then((value) {
      lat.value = value.latitude;
      long.value = value.longitude;
    });
  }

  ///This method to get current location and animate with camera on this lat and long
  Future<void> animateToCurrentLocation({
    required Completer<GoogleMapController> mapController,
    required LatLng initialPosition,
  }) async {
    final controller = await mapController.future;

    final newCameraPosition = CameraPosition(
      target: LatLng(initialPosition.latitude, initialPosition.longitude),
      zoom: 14.4746,
    );
    controller.animateCamera(
      CameraUpdate.newCameraPosition(newCameraPosition),
    );
  }

  ///This method to search then animate camera and add marker on map searched location
  Future<LatLng> searchMap({
    required Completer<GoogleMapController> mapController,
    required TextEditingController searchTEC,
  }) async {
    try {
      final position =
          await GeocodingPlatform.instance.locationFromAddress(searchTEC.text);
      final controller = await mapController.future;
      final newCameraPosition = CameraPosition(
        target: LatLng(position[0].latitude, position[0].longitude),
        zoom: 14.4746,
      );
      markers.isEmpty
          ? addMarker(position[0].latitude, position[0].longitude)
          : replaceMarker(position[0].latitude, position[0].longitude);
      GeocodingPlatform.instance.placemarkFromCoordinates(
        position[0].latitude,
        position[0].longitude,
      );
      controller.animateCamera(
        CameraUpdate.newCameraPosition(newCameraPosition),
      );
      return LatLng(position[0].latitude, position[0].longitude);
    } catch (e) {
      HelperMethods.showToast(msg: 'No address matched with searched text');
      print('search exception>>>>>>>>>> $e');
      return LatLng(0, 0);
    }
  }

  ///this method added normal marker
  void addMarker(double lat, double long) {
    markers.add(
      Marker(
        markerId: MarkerId('1'),
        position: LatLng(lat, long),
        icon: BitmapDescriptor.defaultMarker,
        onTap: () => print('on tap marker'),
      ),
    );
  }

  ///this method replace normal marker which added
  void replaceMarker(double lat, double long) {
    markers.replaceRange(0, 1, [
      Marker(
        markerId: MarkerId('2'),
        position: LatLng(lat, long),
        icon: BitmapDescriptor.defaultMarker,
        onTap: () => print('on tap marker'),
      ),
    ]);
  }

  void addPolygon() {
    polygon.add(
      Polygon(
        polygonId: PolygonId('1'),
        points: bounderPoints,
        fillColor: Colors.green.withOpacity(.5),
        strokeColor: Colors.green,
        strokeWidth: 4,
        consumeTapEvents: true,
      ),
    );
  }

  Future<Position> getCurrentLatLngOfUser() async {
    final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
      timeLimit: Duration(milliseconds: 1000),
    );
    return position;
  }

  @override
  void dispose() async {
    final controller = await mapController.future;
    controller.dispose();
    super.dispose();
  }
}
