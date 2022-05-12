// import 'dart:async';

// import 'package:charge_point_app/services/generated/charge_point.pbgrpc.dart';
// import 'package:grpc/grpc.dart';
// import 'package:grpc/service_api.dart';
// import 'package:grpc/src/client/channel.dart';

// class ChargePointServiceClientMock extends ChargePointServiceClient {
  
  
//   ResponseFuture<ChargePointSet> allChargingPoints(EmptyCPRequest emptyCPRequest) {
//     return ResponseFuture(_call);
//   }
// }

// class FakeClientCall<Q, R> extends ClientCall<Q, R> {
  
//   final Future<R> result;
//   final StreamController<R> _responses = StreamController();
//   ($0.EmptyCPRequest value) => value.writeToBuffer()
  
//   FakeClientCall(
//     this.result
//   ) : super(
//     ClientMethod<Q, R>(
//           '/charge_point_app.ChargePointService/AllChargingPoints',
//           (value) => value.writeToBuffer(),
//           ($core.List<$core.int> value) => ChargePointSet.fromBuffer(value)),
//     Stream.fromIterable([]), CallOptions()) {
    
//   }
// }