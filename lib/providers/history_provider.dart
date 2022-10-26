import 'package:charge_point_app/services/grpc/generated/recharge.pbgrpc.dart';
import 'package:flutter/material.dart';
import '../services/grpc/grpc_manager/grpc_service_manager.dart';


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