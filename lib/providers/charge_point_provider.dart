import 'package:charge_point_app/services/generated/charge_point.pb.dart';
import 'package:charge_point_app/services/grpc_service_manager.dart';
import 'package:charge_point_app/widgets/charge_point_button.dart';
import 'package:flutter/material.dart';
import 'package:synchronized/synchronized.dart';

class ChargePointProvider extends ChangeNotifier {
  
  List<ChargePoint>? chargePoints;
  
  void setChargePointList(List<ChargePoint> list) {
    chargePoints = list;
    notifyListeners();
  }
  
  // Future<List<ChargePoint>> getChargePoints() async{
  //   print('Entro');
  //   var lock = Lock();
  //   await lock.synchronized(() async {
  //     if (_chargePoints == null) {
  //       var serviceManager = GrpcServiceManager();
  //       var chargePointRequest = await serviceManager.getAllChargePoints();
  //       _chargePoints = chargePointRequest.chargePoints;
  //       print('he pedido');
  //     }
  //   });
  //   print('Salgo con ${_chargePoints!.length}');
  //   return _chargePoints!;
  // }
  

  List<TableRow> getChargePointsTable() {
    if (chargePoints == null) return [];
    List<TableRow> tableRows = [];
    tableRows.clear();
    var i = 0;
    for (i = 0; i + 2 < chargePoints!.length; i += 3) {
      tableRows.add(TableRow(children: [
        ChargePointButton(
            available: chargePoints![i].available,
            name: chargePoints![i].id),
        ChargePointButton(
            available: chargePoints![i + 1].available,
            name: chargePoints![i + 1].id),
        ChargePointButton(
            available: chargePoints![i + 2].available,
            name: chargePoints![i + 2].id),
      ]));
    }
    tableRows.add(TableRow(children: [
      Visibility(
        visible: i < chargePoints!.length,
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: ChargePointButton(
              available: i < chargePoints!.length
                ? chargePoints![i].available
                : false,
              name: chargePoints![i].id),
      ),
      Visibility(
        visible: i + 1 < chargePoints!.length,
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: ChargePointButton(
              available: i + 1 < chargePoints!.length
                ? chargePoints![i + 1].available
                : false,
              name: chargePoints![i + 1].id),
      ),
      const Visibility(
        visible: false,
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: ChargePointButton(
              available: false,
              name: ''),
      ),
    ]));
    
    return tableRows;
  }
}
