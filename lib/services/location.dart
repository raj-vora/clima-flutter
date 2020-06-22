import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';

class LocationService {
  double latitude, longitude;

  Future<void> getCurrentLocation() async {
    try {
      Location location = new Location();

      bool _serviceEnabled, _permissionGranted;
      LocationData _locationData;

      _serviceEnabled = await location.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await location.requestService();
        if (!_serviceEnabled) {
          SystemNavigator.pop();
        }
      }

      _permissionGranted = await location.hasPermission();
      if (!_permissionGranted) {
        _permissionGranted = await location.requestPermission();
        if (!_permissionGranted) {
          return;
        }
      }

      _locationData = await location.getLocation();
      latitude = _locationData.latitude;
      longitude = _locationData.longitude;
    } catch (e) {
      print(e);
    }
  }
}