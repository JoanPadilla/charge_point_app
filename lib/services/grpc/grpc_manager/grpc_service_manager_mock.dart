

import 'package:charge_point_app/services/grpc/generated/charge_point.pbgrpc.dart';
import 'package:charge_point_app/services/grpc/generated/google/protobuf/timestamp.pb.dart';
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
    List<ChargePoint> chargePointList = [
      ChargePoint(id: 'P01', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P02', available: false, coordinates: '(10, 10)'),
      ChargePoint(id: 'P03', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P04', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P05', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P06', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P07', available: false, coordinates: '(10, 10)'),
      ChargePoint(id: 'P08', available: false, coordinates: '(10, 10)'),
      ChargePoint(id: 'P09', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P10', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P11', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P12', available: false, coordinates: '(10, 10)'),
      ChargePoint(id: 'P13', available: true, coordinates: '(10, 10)'),
      ChargePoint(id: 'P14', available: false, coordinates: '(10, 10)'),
    ];
    return Future.delayed(const Duration(seconds: 1), () => ChargePointSet(chargePoints: chargePointList));
  }

  //TODO: create stream
  ResponseStream<ChargePoint> getChargingPointsNotifier() {
    return chargePointServiceStub.streamNotifier(EmptyCPRequest());
  }

  @override
  Future<ImageResponse> getChargePointImage(String chargePointId) {
    //TODO: get local image from bytes
    return Future.delayed(const Duration(seconds: 1), () => ImageResponse(imageBytes: []));
  }

  @override
  Future<RechargeSet> getHistory() {
    //TODO: check user token
    List<Recharge> rechargeList = [
      Recharge(chargePoint: ChargePoint(id: 'P02', available: false, coordinates: '(10, 10)'), duration: 4, dateTime: Timestamp.fromDateTime(DateTime.fromMillisecondsSinceEpoch(1665054480000))),
      Recharge(chargePoint: ChargePoint(id: 'P04', available: true, coordinates: '(10, 10)'), duration: 2, dateTime: Timestamp.fromDateTime(DateTime.fromMillisecondsSinceEpoch(1665745680000))),
      Recharge(chargePoint: ChargePoint(id: 'P01', available: true, coordinates: '(10, 10)'), duration: 3, dateTime: Timestamp.fromDateTime(DateTime.fromMillisecondsSinceEpoch(1666460520000))),
      Recharge(chargePoint: ChargePoint(id: 'P02', available: true, coordinates: '(10, 10)'), duration: 4, dateTime: Timestamp.fromDateTime(DateTime.fromMillisecondsSinceEpoch(1666348440000))),
      Recharge(chargePoint: ChargePoint(id: 'P10', available: true, coordinates: '(10, 10)'), duration: 1, dateTime: Timestamp.fromDateTime(DateTime.fromMillisecondsSinceEpoch(1666612800000))),
      Recharge(chargePoint: ChargePoint(id: 'P01', available: true, coordinates: '(10, 10)'), duration: 1, dateTime: Timestamp.fromDateTime(DateTime.fromMillisecondsSinceEpoch(1666700100000))),
    ];
    return Future.delayed(const Duration(seconds: 1), () => RechargeSet(recharges: rechargeList));
  }

  bool sendReport(Incidence incidence) {
    //TODO: check state
    //TODO; check user token
    incidenceServiceStub.reportIncidence(incidence);
    return true;
  }
  
  @override
  Future<LoginResponse> login(String email, String password) {
    return Future.delayed(const Duration(seconds: 1), () => LoginResponse(token: '1234'));
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
