///
//  Generated code. Do not modify.
//  source: charge_points.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'charge_points.pb.dart' as $0;
export 'charge_points.pb.dart';

class ChargePointAPIServiceClient extends $grpc.Client {
  static final _$allChargingPoints =
      $grpc.ClientMethod<$0.Empty, $0.AllChargePoints>(
          '/grpc.ChargePointAPIService/AllChargingPoints',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AllChargePoints.fromBuffer(value));
  static final _$streamNotifier =
      $grpc.ClientMethod<$0.Empty, $0.RawChargePoint>(
          '/grpc.ChargePointAPIService/StreamNotifier',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RawChargePoint.fromBuffer(value));

  ChargePointAPIServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AllChargePoints> allChargingPoints($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$allChargingPoints, request, options: options);
  }

  $grpc.ResponseStream<$0.RawChargePoint> streamNotifier($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamNotifier, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ChargePointAPIServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc.ChargePointAPIService';

  ChargePointAPIServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.AllChargePoints>(
        'AllChargingPoints',
        allChargingPoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.AllChargePoints value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.RawChargePoint>(
        'StreamNotifier',
        streamNotifier_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.RawChargePoint value) => value.writeToBuffer()));
  }

  $async.Future<$0.AllChargePoints> allChargingPoints_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return allChargingPoints(call, await request);
  }

  $async.Stream<$0.RawChargePoint> streamNotifier_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async* {
    yield* streamNotifier(call, await request);
  }

  $async.Future<$0.AllChargePoints> allChargingPoints(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Stream<$0.RawChargePoint> streamNotifier(
      $grpc.ServiceCall call, $0.Empty request);
}
