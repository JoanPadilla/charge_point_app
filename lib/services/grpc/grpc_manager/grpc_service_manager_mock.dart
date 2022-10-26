import 'package:charge_point_app/services/grpc/generated/charge_point.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/generated/incidence.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/generated/recharge.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/generated/user.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/grpc_manager/grpc_service_manager.dart';
import 'package:grpc/grpc.dart';


class GrpcServiceManagerMock implements GrpcServiceManager {

  @override
  void init() {}

  GrpcServiceManagerMock() {
    chargePointServiceStub = ChargePointServiceClient(channel);
    incidenceServiceStub = IncidenceServiceClient(channel);
    rechargesServiceStub = RechargesServiceClient(channel, interceptors: []);
    userServiceStub = UserServiceClient(channel);
  }

  @override
  Future<ChargePointSet> getAllChargePoints() {
    return Future.delayed(const Duration(seconds: 1), () => ChargePointSet(chargePoints: []));
  }

  //TODO: create stream
  ResponseStream<ChargePoint> getChargingPointsNotifier() {
    return chargePointServiceStub.streamNotifier(EmptyCPRequest());
  }

  @override
  Future<ImageResponse> getChargePointImage(String chargePointId) {
    return Future.delayed(const Duration(seconds: 1), () => ImageResponse(imageBytes: []));
  }

  @override
  Future<RechargeSet> getHistory() {
    return Future.delayed(const Duration(seconds: 1), () => RechargeSet(recharges: []));
  }

  bool sendReport(Incidence incidence) {
    //TODO: check state
    incidenceServiceStub.reportIncidence(incidence);
    return true;
  }
  
  @override
  Future<LoginResponse> login(String email, String password) {
    return Future.delayed(const Duration(seconds: 1), () => LoginResponse(token: ''));
  }
  
  bool logout() {
    //TODO: check
    userServiceStub.logout(EmptyUserRequest());
    return true;
  }
  
  @override
  late ClientChannel channel;
  
  @override
  late ChargePointServiceClient chargePointServiceStub;
  
  @override
  late IncidenceServiceClient incidenceServiceStub;
  
  @override
  late RechargesServiceClient rechargesServiceStub;
  
  @override
  late UserServiceClient userServiceStub;
  
  @override
  void onDispose() {
    channel.shutdown();
  }
}
