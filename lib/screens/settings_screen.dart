import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        title: Text('settings'.tr),
      ),
      drawer: const CustomSideMenu(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _PreferenceSection(),
            _HelpSection(),
          ],
        ),
      ),
    );
  }
}

class _PreferenceSection extends StatelessWidget {
  const _PreferenceSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final preferenceProvider = Provider.of<PreferenceProvider>(context);
    List<DropdownMenuItem<Locale>> dropdownItems = const [
      DropdownMenuItem(child: Text('English'), value: Locale('en', 'UK'),),
      DropdownMenuItem(child: Text('Español'), value: Locale('es', 'ES'),),
      DropdownMenuItem(child: Text('Valencià'), value: Locale('ca', 'ES'),),
    ];
    
    return Column(
      children: [
        Container(
          height: 65,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(31, 97, 97, 97),
            border: Border.symmetric(horizontal: BorderSide(color: Colors.black12))
          ),
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('settings'.tr, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
        ),
        
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          color: Colors.white,
          child: Row(
            children: [
              Text('language'.tr, style: const TextStyle(fontSize: 18),),
              const Expanded(child: SizedBox()),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: 150,
                height: 35,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(31, 209, 209, 209),
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
                  },
                ),
              ),
            ],
          ),
        ),
        
        Container(
          height: 1,
          color: Colors.black12,
        ),
        
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          color: Colors.white,
          child: Row(
            children: [
              Text('receive_notifications'.tr, style: const TextStyle(fontSize: 18),),
              const Expanded(child: SizedBox()),
              Switch.adaptive(
                value: preferenceProvider.receiveNotifications,
                onChanged: ( value ) {
                  preferenceProvider.setNotifications(value);
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _HelpSection extends StatelessWidget {
  const _HelpSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color.fromARGB(31, 97, 97, 97),
            border: Border.symmetric(horizontal: BorderSide(color: Colors.black12))
          ),
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text('help'.tr, style: const TextStyle(fontSize: 21, fontWeight: FontWeight.w500),),
          ),
        ),
        
        
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          color: Colors.white,
          child: Row(
            children: [
              Text('version'.tr, style: const TextStyle(fontSize: 17),),
              const Expanded(child: SizedBox()),
              const Text('0.1', style: TextStyle(fontSize: 19),),
            ],
          ),
        ),
        
        Container(
          height: 1,
          color: Colors.black12,
        ),
        
        Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          color: Colors.white,
          child: Row(
            children: [
              Text('contact_email'.tr, style: const TextStyle(fontSize: 17),),
              const Expanded(child: SizedBox()),
              const Text('ajudaPC@uji.es', style: TextStyle(fontSize: 18),),
            ],
          ),
        ),
        
        Container(
          height: 1,
          color: Colors.black12,
        ),
        
        TextButton(
          onPressed: () {
            //TODO: finestra de condicions
          },
          child: Container(
            height: 40,
            margin: const EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            child: Text(
              "terms_use".tr,
              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),),
            width: double.infinity,
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            primary: const Color.fromARGB(31, 150, 150, 150)
          ),
        ),
        
        Container(
          height: 1,
          color: Colors.black12,
        ),
        
        TextButton(
          onPressed: () {
            showDialog(barrierDismissible: true, context: context, builder: (context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(15)),
                elevation: 5,
                title: Text('log_out'.tr, textAlign: TextAlign.center, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                titlePadding: const EdgeInsets.only(bottom: 40, top: 30),
                contentPadding: const EdgeInsets.all(0),
                content: Container(
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: MaterialButton(
                              color: const Color.fromARGB(255, 72, 43, 151),
                              textColor: Colors.white,
                              shape: const ContinuousRectangleBorder(
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15))
                              ),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('yes'.tr)
                            ),
                          ),
                        ),
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: MaterialButton(
                              color: const Color.fromARGB(255, 231, 231, 231),
                              textColor: const Color.fromARGB(255, 70, 70, 70),
                              shape: const ContinuousRectangleBorder(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(15))
                              ),
                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('no'.tr)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            height: 40,
            alignment: Alignment.center,
            child: Text(
              'log_out'.tr,
              style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.normal),),
            width: double.infinity,
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            primary: const Color.fromARGB(31, 150, 150, 150)
          ),
        ),
        
        Container(
          height: 1,
          color: Colors.black12,
        ),
      ],
    );
  }
}