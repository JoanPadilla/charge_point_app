import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapProvider extends ChangeNotifier{
  
  final CameraPosition initialPosition = const CameraPosition(
      target: LatLng(39.994427, -0.068448),
      zoom: 16,
      tilt: 15
    );
    
  final markers = <Marker>{};
  String? mapStyle;
  Uint8List? markerIconAvailable;
  Uint8List? markerIconUnavailable;
  bool loading = true;
  
  MapProvider() {
    rootBundle.loadString('assets/map_style2.txt').then((string) {
      mapStyle = string;
    });
    
    _init();
  }
  
  void _init() async {
    await _loadMarkersIcon();
    await _addInitialMarkers();
    loading = false;
    notifyListeners();
  }
  
  _addInitialMarkers() async {
    //TODO: temporal
    markers.add(Marker(
      markerId: const MarkerId('P1'),
      icon: BitmapDescriptor.fromBytes(markerIconAvailable!),
      infoWindow: const InfoWindow(title: 'P1', snippet: 'Disponible'),
      position: const LatLng(39.992403, -0.069522),
    ));
    markers.add(Marker(
      markerId: const MarkerId('P2'),
      icon: BitmapDescriptor.fromBytes(markerIconUnavailable!),
      infoWindow: const InfoWindow(title: 'P2', snippet: 'No disponible'),
      position: const LatLng(39.992210, -0.067252),
    ));
  }
  
  _loadMarkersIcon() async {
    markerIconAvailable = await _getBytesFromAsset('assets/markers/marker_available.png', 100);
    markerIconUnavailable = await _getBytesFromAsset('assets/markers/marker_unavailable.png', 100);
  }
  
  Future<Uint8List> _getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
    // markerIcon = await BitmapDescriptor.fromAssetImage(const ImageConfiguration(), 'assets/charger_marker.png');
  }
}