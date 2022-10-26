import 'package:charge_point_app/services/grpc/generated/user.pb.dart';
import 'package:charge_point_app/share_preference/user_data.dart';
import 'grpc/grpc_manager/grpc_service_manager.dart';


class UserService {
  
  static Future<bool> login(String email, String password) async {
    var serviceManager = GrpcServiceManager();
    LoginResponse response;
    try {
      response = await serviceManager.login(email, password);
    } catch (e) {
      return false;
    }
    
    UserData.token = response.token;
    return true;
  }
  
}