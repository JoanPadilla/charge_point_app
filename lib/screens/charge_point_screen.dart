import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';


class ChargePointScreen extends StatelessWidget {
  const ChargePointScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 180,
        automaticallyImplyLeading: false,
        flexibleSpace: const Image(image: AssetImage('assets/foto_cargador.webp'), fit: BoxFit.cover,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: AppTheme.primaryColor,
        child: Icon(Icons.arrow_back),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniStartTop,
    );
  }
}