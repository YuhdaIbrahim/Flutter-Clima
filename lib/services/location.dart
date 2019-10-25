import 'package:geolocator/geolocator.dart';

class Location {
  double lLatitude;
  double lLongitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print(position);
      lLatitude = position.latitude;
      lLongitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
