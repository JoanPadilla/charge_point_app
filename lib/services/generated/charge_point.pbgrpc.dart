///
//  Generated code. Do not modify.
//  source: charge_point.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'charge_point.pb.dart' as $0;
export 'charge_point.pb.dart';

class ChargePointServiceClient extends $grpc.Client {
  static final _$allChargingPoints =
      $grpc.ClientMethod<$0.EmptyCPRequest, $0.ChargePointSet>(
          '/charge_point_app.ChargePointService/AllChargingPoints',
          ($0.EmptyCPRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ChargePointSet.fromBuffer(value));
  static final _$streamNotifier =
      $grpc.ClientMethod<$0.EmptyCPRequest, $0.ChargePoint>(
          '/charge_point_app.ChargePointService/StreamNotifier',
          ($0.EmptyCPRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ChargePoint.fromBuffer(value));
  static final _$downloadImage =
      $grpc.ClientMethod<$0.ImageRequest, $0.ImageResponse>(
          '/charge_point_app.ChargePointService/downloadImage',
          ($0.ImageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ImageResponse.fromBuffer(value));

  ChargePointServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ChargePointSet> allChargingPoints(
      $0.EmptyCPRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$allChargingPoints, request, options: options);
  }

  $grpc.ResponseStream<$0.ChargePoint> streamNotifier($0.EmptyCPRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$streamNotifier, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.ImageResponse> downloadImage($0.ImageRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$downloadImage, request, options: options);
  }
}

abstract class ChargePointServiceBase extends $grpc.Service {
  $core.String get $name => 'charge_point_app.ChargePointService';

  ChargePointServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.EmptyCPRequest, $0.ChargePointSet>(
        'AllChargingPoints',
        allChargingPoints_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EmptyCPRequest.fromBuffer(value),
        ($0.ChargePointSet value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EmptyCPRequest, $0.ChargePoint>(
        'StreamNotifier',
        streamNotifier_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.EmptyCPRequest.fromBuffer(value),
        ($0.ChargePoint value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ImageRequest, $0.ImageResponse>(
        'downloadImage',
        downloadImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ImageRequest.fromBuffer(value),
        ($0.ImageResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ChargePointSet> allChargingPoints_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyCPRequest> request) async {
    return allChargingPoints(call, await request);
  }

  $async.Stream<$0.ChargePoint> streamNotifier_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EmptyCPRequest> request) async* {
    yield* streamNotifier(call, await request);
  }

  $async.Future<$0.ImageResponse> downloadImage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ImageRequest> request) async {
    return downloadImage(call, await request);
  }

  $async.Future<$0.ChargePointSet> allChargingPoints(
      $grpc.ServiceCall call, $0.EmptyCPRequest request);
  $async.Stream<$0.ChargePoint> streamNotifier(
      $grpc.ServiceCall call, $0.EmptyCPRequest request);
  $async.Future<$0.ImageResponse> downloadImage(
      $grpc.ServiceCall call, $0.ImageRequest request);
}
