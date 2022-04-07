import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:charge_point_app/widgets/custom_side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);
    

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
   late String _mapStyle;
  
  @override
void initState() {
  super.initState();

  rootBundle.loadString('assets/map_style.txt').then((string) {
    _mapStyle = string;
  });
}
  
  @override
  Widget build(BuildContext context) {
    
    Completer<GoogleMapController> _controller = Completer();
    GoogleMapController mapController;
    
    const CameraPosition initialPosition = CameraPosition(
      target: LatLng(39.994427, -0.068448),
      zoom: 17,
      tilt: 2
    );
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      drawer: const CustomSideMenu(),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: GoogleMap(
              zoomControlsEnabled: false,
              mapType: MapType.normal,
              initialCameraPosition: initialPosition,
              onMapCreated: (GoogleMapController controller) {
                // _controller.complete(controller);
                mapController = controller;
                mapController.setMapStyle(_mapStyle);
              } ,
            ),
          )
        ],
      ),
    );
  }
}