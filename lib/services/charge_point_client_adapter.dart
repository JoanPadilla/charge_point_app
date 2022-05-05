

import 'package:charge_point_app/models/models.dart';
import 'package:charge_point_app/services/generated/charge_points.pbgrpc.dart';


class ChargePointClientAdapter {
  
  List<ChargePoint> adaptCPList(List<RawChargePoint> chargePointList) {
    List<ChargePoint> newList = [];
    for (var chargePointData in chargePointList) {
      // newList.add(ChargePoint(name: cha))
    }
    return [];
  }
  
}