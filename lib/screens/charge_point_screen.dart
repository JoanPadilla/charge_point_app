import 'package:charge_point_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


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
      floatingActionButton: const _FloatingButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('charger'.tr + ' P1' , style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                      const SizedBox(height: 8),
                      Text('cord.'.tr + ': (10.234, -0.42)', style: const TextStyle(fontSize: 20, color: Colors.black54),),
                    ],
                  ),
                ],
              ),
              
              const SizedBox(height: 15),
              
              Container(
                width: 160,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape:BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  // boxShadow: const [
                  //   BoxShadow(blurRadius: 4, offset: Offset(2, 2))
                  // ]
                ),
                child: Center(
                  child: Text(
                    'available'.tr,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              
              const SizedBox(height: 50,)
              
            ],
          ),
        ),
      ),
    );
  }
}

class _FloatingButtons extends StatelessWidget {
  const _FloatingButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.pop(context);
            },
            backgroundColor: AppTheme.primaryColor,
            child: const Icon(Icons.arrow_back),
          ),
          const Expanded(child: SizedBox()),
          const _ButtonSection(),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 45,
      decoration: const BoxDecoration(
        color: AppTheme.primaryColor,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            child: TextButton(
              style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
              onPressed: () {
                //TODO: Implementar mensaje de noImplemented
              },
              child: _CustomButton(text: 'book'.tr, icon: Icons.book_outlined,),
            ),
          ),
          const VerticalDivider(color: Colors.white, indent: 8, endIndent: 8),
          TextButton(
            style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
            onPressed: () {
              _launchMapsUrl(39.992403, -0.069522);
            },
            child: _CustomButton(text: 'route'.tr, icon: Icons.map_outlined,),
          ),
        ],
      ),
    );
  }
  
  //TODO: transportar a service
  void _launchMapsUrl(double lat, double lon) async {
    final url = 'https://www.google.com/maps/search/?api=1&query=$lat,$lon'; 
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}

class _CustomButton extends StatelessWidget {
  
  final String text;
  final IconData icon;
    
  const _CustomButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 23, ),
          Text(text, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }
}