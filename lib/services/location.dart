import 'package:geolocator/geolocator.dart';

class Location{
  double? latitude;
  double? longitude;

  Future getLatLon() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission != LocationPermission.deniedForever) {
      try {
        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
        //print(position);
        latitude = position.latitude;
        longitude = position.longitude;
      }catch(e){
        print(e);
      }
    }
  }
}