import 'dart:async';

import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

//TODO: separar clase
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
        actions: [
          _NotificationsButton(),
          const SizedBox(width:20),
          Container(
            margin: const EdgeInsets.only(right: 10),
            width: 45,
            padding: const EdgeInsets.all(0),
            child: FittedBox(
              child: IconButton(onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const CustomLoginDialog(),
                );
              }, icon: const Icon(Icons.person, color: Colors.black54, size: 30,)),
              fit: BoxFit.cover,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.black54,
                width: 2,
              ),
            ),
          ),
        ],
      ),
      drawer: const CustomSideMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
          const _CustomMap(),
          Divider(
          thickness: 1,
          height: 1,
          color: AppTheme.primaryColor.withOpacity(0.2)
          // color: Color.fromARGB(255, 198, 163, 221),
        ),
          
          Expanded(
            child: ListView(

              children: [
                const SizedBox(height: 25,),
            
                Row(
                  children: [
                    const SizedBox(width: 30,),
                    
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'available_chargers'.tr,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        
                        Container(height: 4, width: 170, color: AppTheme.primaryColor,),
                      ],
                    ),
                  ],
                ),
                
                const SizedBox(height: 10,),
                const _CustomTable(),
              ],
            ),
          ),
          
          
        ],
      ),
    );
  }
}

class _NotificationsButton extends StatelessWidget {
  const _NotificationsButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PreferenceProvider>(context, listen: true);
    return IconButton(
      onPressed: () {
        provider.notificaciones = !provider.notificaciones;
      },
      icon: Stack(
        children: <Widget> [
          const Center(child: Icon(Icons.notifications, color: Colors.white)),
          if (provider.notificaciones) const Positioned(
            child: Icon(Icons.brightness_1, color: Colors.red, size: 12),
            left: 17,
            top: 9,
          ),
        ],
      ),
    );
  }
}

class _CustomMap extends StatefulWidget {
  const _CustomMap({ Key? key }) : super(key: key);

  @override
  State<_CustomMap> createState() => _CustomMapState();
}

class _CustomMapState extends State<_CustomMap> {

  final Completer<GoogleMapController> _mapController = Completer();
  
  @override
  Widget build(BuildContext context) {
    
    final mapProvider = Provider.of<MapProvider>(context);
    
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

class _CustomTable extends StatelessWidget {
  const _CustomTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      //TODO: Els tamanys y les distancies s'han de fer dinamics, amb l'amplaria de la pantalla
      defaultColumnWidth: const FixedColumnWidth(120),
      children: const [
        TableRow(
          children: [
            _ChargePointButton(available: true, name: 'P1',),
            _ChargePointButton(available: true, name: 'P2',),
            _ChargePointButton(available: false, name: 'P3',),
          ]
        ),
        TableRow(
          children: [
            _ChargePointButton(available: false, name: 'P4',),
            _ChargePointButton(available: false, name: 'P5',),
            _ChargePointButton(available: true, name: 'P6',),
          ]
        ),
        TableRow(
          children: [
            _ChargePointButton(available: false, name: 'P7',),
            _ChargePointButton(available: true, name: 'P8',),
            _ChargePointButton(available: true, name: 'P9',),
          ]
        ),
        TableRow(
          children: [
            _ChargePointButton(available: true, name: 'P10',),
            _ChargePointButton(available: false, name: 'P11',),
            _ChargePointButton(available: true, name: 'P12',),
          ]
        ),
      ],
    );
  }
}

class _ChargePointButton extends StatelessWidget {
  
  final bool available;
  final String name;
  
  const _ChargePointButton({
    Key? key,
    required this.available,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 11,
          primary: Colors.transparent,
          onPrimary: Colors.white,
          padding: const EdgeInsets.all(0.0),
          shape:const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)))
        ),
        onPressed: !available ? null : () {
          Navigator.pushNamed(context, 'charge_point');
        },
        child: Ink(
            decoration: BoxDecoration(
            gradient: available ? const LinearGradient(
              colors: [
                Color.fromARGB(255, 189, 164, 206),
                AppTheme.primaryColor,
                ],
                begin: Alignment.topLeft,
                end: Alignment.centerRight,
                stops: [0.05,0.35],
              ) : null,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
          ),
          child: SizedBox(
            height: 70,
            child: Align(
              alignment: Alignment.center,
              child: Text(name, style: const TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),
          ),
        ),
      ),
    );
  }
}

