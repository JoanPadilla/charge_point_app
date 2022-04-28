import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';


class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    
    //TODO: vars temporals
    List<List<String>> recarga = [
      ['05/03/2022', 'P6', '5 horas'],
      ['08/03/2022', 'P2', '6 horas'],
      ['11/03/2022', 'P2', '7 horas'],
      ['16/03/2022', 'P3', '3 horas'],
      ['22/03/2022', 'P8', '5 horas'],
      ['26/03/2022', 'P2', '2 horas'],
      ['27/03/2022', 'P3', '5 horas'],
    ];
    int recargaTocada = -1;
    
    return Scaffold( 
      appBar: AppBar(
        title: const Text('Historial'),
      ),
      drawer: const CustomSideMenu(),
      body: ListView.builder(
        itemBuilder: ( _ , index) {
          return Column(
            children: [
              ExpansionTile(
                tilePadding: const EdgeInsets.only(bottom: 2, left: 20, right: 20),
                
                leading: const ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: AppTheme.secondaryColor,),
                title: Text(recarga[index][1], style: const TextStyle(fontSize: 19),),
                subtitle: Text(recarga[index][0], style: const TextStyle(fontSize: 15),),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text('Fecha:  ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text(recarga[index][0], style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            const Text('Duración:  ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text(recarga[index][2], style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            const Text('Punto de carga:   ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text(recarga[index][1], style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
                // trailing: recargaTocada == index ? const Icon(Icons.expand_more, size: 35,) : const Icon(Icons.arrow_forward_ios),
              ),
              Container(
                child: index == recargaTocada ? const Text('Holaaa') : null,
                color: Colors.red,
              )
            ],
          );
        },
        itemCount: recarga.length,
        // separatorBuilder: ( _ , index) {
        //   return const Divider(color: AppTheme.primaryColor, thickness: 0.2,);
        // },
      )
    );
  }
}