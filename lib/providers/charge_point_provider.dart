import 'package:charge_point_app/services/generated/charge_point.pb.dart';
import 'package:charge_point_app/services/grpc_service_manager.dart';
import 'package:charge_point_app/widgets/charge_point_button.dart';
import 'package:flutter/material.dart';
import 'package:synchronized/synchronized.dart';

class ChargePointProvider extends ChangeNotifier {
  
  List<ChargePoint>? _chargePoints;
  
  Future<List<ChargePoint>> getChargePoints() async{
    print('Entro');
    var lock = Lock();
    await lock.synchronized(() async {
      if (_chargePoints == null) {
        var serviceManager = GrpcServiceManager();
        var chargePointRequest = await serviceManager.getAllChargePoints();
        _chargePoints = chargePointRequest.chargePoints;
        print('he pedido');
      }
    });
    print('Salgo con ${_chargePoints!.length}');
    return _chargePoints!;
  }
  
  final List<TableRow> _tableRows = [];
  
  List<TableRow> getTableRows() {
    if (_tableRows.isEmpty){
      getChargePointsTable();
    }
    return _tableRows;
  }
  
  set chargePoints(List<ChargePoint> map) {
    
  }

  void getChargePointsTable() async {
    var chargePointList = await getChargePoints();
    print('he llamado desde get tables');
    _tableRows.clear();
    var i = 0;
    for (i = 0; i + 2 < chargePointList.length; i += 3) {
      _tableRows.add(TableRow(children: [
        ChargePointButton(
            available: chargePointList[i].available,
            name: chargePointList[i].id),
        ChargePointButton(
            available: chargePointList[i + 1].available,
            name: chargePointList[i + 1].id),
        ChargePointButton(
            available: chargePointList[i + 2].available,
            name: chargePointList[i + 2].id),
      ]));
    }
    _tableRows.add(TableRow(children: [
      Visibility(
        visible: i < chargePointList.length,
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: ChargePointButton(
              available: i < chargePointList.length
                ? chargePointList[i].available
                : false,
              name: chargePointList[i].id),
      ),
      Visibility(
        visible: i + 1 < chargePointList.length,
        maintainSize: true,
        maintainAnimation: true,
        maintainState: true,
        child: ChargePointButton(
              available: i + 1 < chargePointList.length
                ? chargePointList[i + 1].available
                : false,
              name: chargePointList[i + 1].id),
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
    
    notifyListeners();
  }
}
