import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final preferenceProvider = Provider.of<PreferenceProvider>(context);
    List<DropdownMenuItem<Locale>> dropdownItems = const [
      DropdownMenuItem(child: Text('English'), value: Locale('en', 'UK'),),
      DropdownMenuItem(child: Text('Español'), value: Locale('es', 'ES'),),
      DropdownMenuItem(child: Text('Valencià'), value: Locale('ca', 'ES'),),
    ];
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        title: Text('settings'.tr),
      ),
      drawer: const CustomSideMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('language'.tr, style: const TextStyle(fontSize: 18),),
                  const SizedBox(width: 50,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: 210,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: DropdownButton<Locale>(
                      style: const TextStyle(fontSize: 17, color: Colors.black),
                      value: preferenceProvider.language,
                      underline: Container(),
                      borderRadius: BorderRadius.circular(10),
                      isExpanded: true,
                      items: dropdownItems,
                      onChanged: ( value ) {
                        preferenceProvider.setLanguage(value);
                        preferenceProvider.language = value!;
                      },
                    ),
                  ),
                ],
              ),
              
              
              
              const Divider(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}