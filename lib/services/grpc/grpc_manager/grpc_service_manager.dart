import 'package:charge_point_app/services/grpc/generated/charge_point.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/generated/incidence.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/generated/recharge.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/generated/user.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/interceptors/authentication_interceptor.dart';
import 'package:grpc/grpc.dart';

import 'grpc_service_manager_mock.dart';


class GrpcServiceManager {

  static GrpcServiceManager? _instance;

  GrpcServiceManager._privateConstructor();

  factory GrpcServiceManager({Environment environment = Environment.PROD}) {
    if (_instance == null) {
      switch(environment) {
        case (Environment.DEV):
          _instance = GrpcServiceManagerMock();
          break;
        case (Environment.PROD):
          _instance = GrpcServiceManager._privateConstructor();
          break;
        default:
          _instance = GrpcServiceManager._privateConstructor();
          break;
      }
    }
    return _instance!;
  }
  
  late ClientChannel channel;
  late ChargePointServiceClient chargePointServiceStub;
  late IncidenceServiceClient incidenceServiceStub;
  late RechargesServiceClient rechargesServiceStub;
  late UserServiceClient userServiceStub;

  void init() {
    channel = ClientChannel('10.0.2.2',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));

    chargePointServiceStub = ChargePointServiceClient(channel);
    incidenceServiceStub = IncidenceServiceClient(channel);
    rechargesServiceStub = RechargesServiceClient(channel, interceptors: [AuthenticationInterceptor()]);
    userServiceStub = UserServiceClient(channel);
    print('GRPC SERVICE OPENED');
  }

  void onDispose() {
    channel.shutdown();
  }

  Future<ChargePointSet> getAllChargePoints() {
    return chargePointServiceStub.allChargingPoints(EmptyCPRequest());
  }

  //TODO: change return type
  ResponseStream<ChargePoint> getChargingPointsNotifier() {
    return chargePointServiceStub.streamNotifier(EmptyCPRequest());
  }

  Future<ImageResponse> getChargePointImage(String chargePointId) {
    return chargePointServiceStub.downloadImage(ImageRequest(chargePointId: chargePointId));
  }

  Future<RechargeSet> getHistory() {
    return rechargesServiceStub.getHistory(EmptyHistoryRequest());
  }

  bool sendReport(Incidence incidence) {
    //TODO: check state
    incidenceServiceStub.reportIncidence(incidence);
    return true;
  }
  
  Future<LoginResponse> login(String email, String password) {
    return userServiceStub.login(LoginRequest(email: email, password: password));
  }
  
  bool logout() {
    //TODO: check
    userServiceStub.logout(EmptyUserRequest());
    return true;
  }

  
}

enum Environment { DEV, PROD }
