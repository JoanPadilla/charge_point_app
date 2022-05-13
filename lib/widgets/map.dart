import 'dart:async';

import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/services/generated/charge_point.pb.dart';
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
  Set<Marker> markers = <Marker>{};
  
  void loadMarkers(MapProvider provider, List<ChargePoint> list) {
    markers = provider.getMarkers(list);
    setState(() {
      
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final mapProvider = Provider.of<MapProvider>(context, listen: true);
    final chargePointProvider = Provider.of<ChargePointProvider>(context, listen: true);
    final chargePoints = chargePointProvider.chargePoints;
    if (chargePoints != null) {
      loadMarkers(mapProvider, chargePoints);
    }
    
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
        markers: markers,
        initialCameraPosition: mapProvider.initialPosition,
        onMapCreated: (GoogleMapController controller) {
          controller.setMapStyle(mapProvider.mapStyle);
          _mapController.complete(controller);
        } ,
      ),
    );
  }
}