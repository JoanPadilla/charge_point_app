import 'package:charge_point_app/services/generated/charge_point.pbgrpc.dart';
import 'package:charge_point_app/services/generated/incidence.pbgrpc.dart';
import 'package:charge_point_app/services/generated/recharge.pbgrpc.dart';
import 'package:charge_point_app/services/generated/user.pbgrpc.dart';
import 'package:charge_point_app/services/interceptors/authentication_interceptor.dart';
import 'package:grpc/grpc.dart';

class GrpcServiceManager {
  static Environment ENV = Environment.DEV;
  late ClientChannel channel;
  late ChargePointServiceClient chargePointServiceStub;
  late IncidenceServiceClient incidenceServiceStub;
  late RechargesServiceClient rechargesServiceStub;
  late UserServiceClient userServiceStub;

  static GrpcServiceManager? _instance;

  GrpcServiceManager._privateConstructor();

  factory GrpcServiceManager() {
    _instance ??= GrpcServiceManager._privateConstructor();
    return _instance!;
  }

  void init(Environment environment) {
    channel = ClientChannel('10.0.2.2',
        port: 8080,
        options:
            const ChannelOptions(credentials: ChannelCredentials.insecure()));

    switch (environment) {
      case Environment.DEV:
        // TODO: Handle this case.
        break;
      case Environment.PROD:
        print('hellegado');
        chargePointServiceStub = ChargePointServiceClient(channel);
        incidenceServiceStub = IncidenceServiceClient(channel);
        rechargesServiceStub = RechargesServiceClient(channel, interceptors: [AuthenticationInterceptor()]);
        userServiceStub = UserServiceClient(channel);
        break;
    }
    print('GRPC SERVICE OPENED');
  }

  void onDispose() {
    channel.shutdown();
  }

  ResponseFuture<ChargePointSet> getAllChargePoints() {
    return chargePointServiceStub.allChargingPoints(EmptyCPRequest());
  }

  ResponseStream<ChargePoint> getChargingPointsNotifier() {
    return chargePointServiceStub.streamNotifier(EmptyCPRequest());
  }

  ResponseFuture<ImageResponse> getChargePointImage(String chargePointId) {
    return chargePointServiceStub.downloadImage(ImageRequest(chargePointId: chargePointId));
  }

  ResponseFuture<RechargeSet> getHistory() {
    print('hellegadometodo');
    return rechargesServiceStub.getHistory(EmptyHistoryRequest());
  }

  bool sendReport(Incidence incidence) {
    //TODO: check state
    incidenceServiceStub.reportIncidence(incidence);
    return true;
  }
  
  ResponseFuture<LoginResponse> login(String email, String password) {
    return userServiceStub.login(LoginRequest(email: email, password: password));
  }
  
  bool logout() {
    //TODO: check
    userServiceStub.logout(EmptyUserRequest());
    return true;
  }
}

enum Environment { DEV, PROD }
