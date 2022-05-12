import 'dart:async';

import 'package:charge_point_app/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';


class ChargePointsMap extends StatefulWidget {
  const ChargePointsMap({ Key? key }) : super(key: key);

  @override
  State<ChargePointsMap> createState() => _MapState();
}

class _MapState extends State<ChargePointsMap> {

  final Completer<GoogleMapController> _mapController = Completer();
  
  @override
  void initState() {
    final mapProvider = Provider.of<MapProvider>(context, listen: false);
    final chargePointProvider = Provider.of<ChargePointProvider>(context, listen: false);
    final chargePoints = chargePointProvider.getChargePoints();
    chargePoints.then((value) {
      mapProvider.addMarkers(value);
      setState(() {
        
      });
    },);
  }
  
  @override
  Widget build(BuildContext context) {
    
    final mapProvider = Provider.of<MapProvider>(context);
    // final chargePointProvider = Provider.of<ChargePointProvider>(context, listen: false);
    // final chargePoints = chargePointProvider.getChargePoints();
    
    // chargePoints.then((value) {
    //   mapProvider.addMarkers(value);
    // },);
    
    return SizedBox(
      height: MediaQuery.of(context).size.height / 7 * 3,
      width: double.infinity,
      child: mapProvider.loading
      ? const Padding(
        padding:  EdgeInsets.all(50.0),
        child:  CircularProgressIndicator.adaptive(),
      ) 
      : GoogleMap(
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        markers: mapProvider.markers,
        initialCameraPosition: mapProvider.initialPosition,
        onMapCreated: (GoogleMapController controller) {
          controller.setMapStyle(mapProvider.mapStyle);
          _mapController.complete(controller);
        } ,
      ),
    );
  }
}