import 'package:charge_point_app/services/generated/user.pb.dart';
import 'package:charge_point_app/services/grpc_service_manager.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  
  String? token;
  
  Future<bool> login(String email, String password) async {
    var serviceManager = GrpcServiceManager();
    LoginResponse response;
    try {
      response = await serviceManager.login(email, password);
    } catch (e) {
      return false;
    }
    
    token = response.token;
    return true;
  }
  
}