import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';


class IncidenceScreen extends StatelessWidget {
  const IncidenceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Incidence screen'),
      ),
      drawer: const CustomSideMenu(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              const Text('Concepto', style: TextStyle(fontSize: 20),),
              const SizedBox(height: 7,),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Concepto',
                ),
              ),
              
              const SizedBox(height: 40,),
              
              const Text('Punto de carga (opcional)', style: TextStyle(fontSize: 20),),
              const SizedBox(height: 7,),
              DropdownButtonFormField<String>(
                isExpanded: true,
                value: '_',
                items: const [
                  DropdownMenuItem(child: Text(' - - '), value: '_',),
                  DropdownMenuItem(child: Text('P1'), value: 'P1',),
                  DropdownMenuItem(child: Text('P2'), value: 'P2',),
                  DropdownMenuItem(child: Text('P3'), value: 'P3',),
                  DropdownMenuItem(child: Text('P4'), value: 'P4',),
                ],
                onChanged: ( _ ) {},
              ),
              
              const SizedBox(height: 50,),
      
              const Text('Descripcion', style: TextStyle(fontSize: 20),),
              const SizedBox(height: 8,),
              TextFormField(
                maxLines: 13,
                decoration: const InputDecoration(
                  hintText: 'Descripcion',
                  fillColor: Color.fromARGB(255, 241, 241, 241),
                  filled: true,
                ),
              ),
              
              const SizedBox(height: 40,),
              
              ElevatedButton(
                onPressed: () {},
                child: const Text('Enviar', style: TextStyle(fontSize: 20),),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  primary: AppTheme.secondaryColor
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}