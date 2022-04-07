import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/custom_side_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home screen'),
      ),
      drawer: const CustomSideMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            
            //TODO: El mapa moviment del mapa entra en conflicte amb el moviment del scroll, igual hi ha que desanidar-los
            const _CustomMap(),
            
            const SizedBox(height: 25,),
            
            Row(
              children: const [
                SizedBox(width: 30,),
                
                Text(
                  'Cargadores disponibles',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 25,),
            const _CustomTable()
            
            
          ],
        ),
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
  late String _mapStyle;
  GoogleMapController? mapController ;
  
  @override
  void initState() {
  super.initState();

  rootBundle.loadString('assets/map_style.txt').then((string) {
    _mapStyle = string;
  });
}
  
  @override
  Widget build(BuildContext context) {
    
    const CameraPosition initialPosition = CameraPosition(
      target: LatLng(39.994427, -0.068448),
      zoom: 17,
      tilt: 2
    );
    
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: GoogleMap(
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        initialCameraPosition: initialPosition,
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
          mapController!.setMapStyle(_mapStyle);
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
            _ChargePointButton(),
            _ChargePointButton(),
            _ChargePointButton(),
          ]
        ),
        TableRow(
          children: [
            _ChargePointButton(),
            _ChargePointButton(),
            _ChargePointButton(),
          ]
        ),
        TableRow(
          children: [
            _ChargePointButton(),
            _ChargePointButton(),
            _ChargePointButton(),
          ]
        ),
      ],
    );
  }
}

class _ChargePointButton extends StatelessWidget {
  const _ChargePointButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: AppTheme.primaryColor,
          height: 70,
          width: 70,
          child: const Align(
            alignment: Alignment.center,
            child: Text('P1', style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),
        ),
      ),
    );
  }
}

