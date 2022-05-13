import 'package:charge_point_app/services/generated/recharge.pbgrpc.dart';
import 'package:charge_point_app/services/grpc_service_manager.dart';
import 'package:flutter/material.dart';


class HistoryProvider extends ChangeNotifier {
  
  List<Recharge>? rechargeHistory;
  
  HistoryProvider() {
    init();
  }
  
  init() async {
    RechargeSet response = await GrpcServiceManager().getHistory();
    rechargeHistory = response.recharges;
    notifyListeners();
  }
}