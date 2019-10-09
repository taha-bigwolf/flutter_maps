import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'locations.dart' as locations;

class CommunityMap extends StatefulWidget {
  @override
  _CommunityMapState createState() => _CommunityMapState();
}

class _CommunityMapState extends State<CommunityMap> {
  final Map<String, Marker> _markers = {};

  String _mapStyle;

  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
    await controller.setMapStyle(_mapStyle);
    setState(() {
      _markers.clear();
      for (int i = 0; i < 15; i++) {
        final marker = Marker(
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
          markerId: MarkerId(googleOffices.offices[i].name),
          position: LatLng(
              googleOffices.offices[i].lat, googleOffices.offices[i].lng),
          infoWindow: InfoWindow(
            title: googleOffices.offices[i].name,
            snippet: googleOffices.offices[i].address,
          ),
        );
        _markers[googleOffices.offices[i].name] = marker;
      }
      // for (final office in googleOffices.offices) {
      //   final marker = Marker(
      //     markerId: MarkerId(office.name),
      //     position: LatLng(office.lat, office.lng),
      //     infoWindow: InfoWindow(
      //       title: office.name,
      //       snippet: office.address,
      //     ),
      //   );
      //   _markers[office.name] = marker;
      // }
    });
  }

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      onMapCreated: _onMapCreated,
      initialCameraPosition: CameraPosition(
        target: const LatLng(24.904214, 67.078828),
        zoom: 0,
      ),
      markers: _markers.values.toSet(),
    );
  }
}
