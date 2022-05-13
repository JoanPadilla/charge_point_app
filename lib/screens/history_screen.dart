import 'package:charge_point_app/providers/providers.dart';
import 'package:charge_point_app/themes/app_theme.dart';
import 'package:charge_point_app/utils/date_time_formatter.dart';
import 'package:charge_point_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';


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
      ['05/03/2022', '15:46', '5 horas', 'P6'],
      ['08/03/2022', '16:15', '6 horas', 'P2'],
      ['11/03/2022', '15:33', '7 horas', 'P2'],
      ['16/03/2022', '15:38', '3 horas', 'P3'],
      ['22/03/2022', '19:12', '5 horas', 'P8'],
      ['26/03/2022', '18:58', '2 horas', 'P2'],
      ['27/03/2022', '15:24', '5 horas', 'P3'],
    ];
    
    HistoryProvider historyProvider = Provider.of<HistoryProvider>(context, listen: true);
    
    
    return Scaffold( 
      appBar: AppBar(
        title: Text('history'.tr),
      ),
      drawer: const CustomSideMenu(),
      body: historyProvider.rechargeHistory == null
        ? Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            height: 200,
            child: const CircularProgressIndicator.adaptive(),
          )
        : ListView.builder(
        itemCount: historyProvider.rechargeHistory!.length,
        itemBuilder: ( _ , index) {
          return Column(
            children: [
              ExpansionTile(
                tilePadding: const EdgeInsets.only(bottom: 2, left: 20, right: 20),
                
                leading: const ImageIcon(AssetImage("assets/electricity_full_icon.png"), color: AppTheme.secondaryColor,),
                title: Text(DateTimeFormatter.formatTime(historyProvider.rechargeHistory![index].dateTime), style: const TextStyle(fontSize: 19),),
                subtitle: Text(DateTimeFormatter.formatDate(historyProvider.rechargeHistory![index].dateTime), style: const TextStyle(fontSize: 15),),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('date'.tr + ':  ', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text(DateTimeFormatter.formatDate(historyProvider.rechargeHistory![index].dateTime), style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('start_time'.tr + ':  ', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text(DateTimeFormatter.formatTime(historyProvider.rechargeHistory![index].dateTime), style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('duration'.tr + ':  ', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text(historyProvider.rechargeHistory![index].duration.toString(), style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('charging_point'.tr + ':  ', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                            Text(historyProvider.rechargeHistory![index].chargePoint.id, style: const TextStyle(fontSize: 16),),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          );
        },
      )
    );
  }
}