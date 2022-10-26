///
//  Generated code. Do not modify.
//  source: recharge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'recharge.pb.dart' as $2;
export 'recharge.pb.dart';

class RechargesServiceClient extends $grpc.Client {
  static final _$getHistory =
      $grpc.ClientMethod<$2.EmptyHistoryRequest, $2.RechargeSet>(
          '/charge_point_app.RechargesService/getHistory',
          ($2.EmptyHistoryRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.RechargeSet.fromBuffer(value));

  RechargesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$2.RechargeSet> getHistory(
      $2.EmptyHistoryRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getHistory, request, options: options);
  }
}

abstract class RechargesServiceBase extends $grpc.Service {
  $core.String get $name => 'charge_point_app.RechargesService';

  RechargesServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.EmptyHistoryRequest, $2.RechargeSet>(
        'getHistory',
        getHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $2.EmptyHistoryRequest.fromBuffer(value),
        ($2.RechargeSet value) => value.writeToBuffer()));
  }

  $async.Future<$2.RechargeSet> getHistory_Pre($grpc.ServiceCall call,
      $async.Future<$2.EmptyHistoryRequest> request) async {
    return getHistory(call, await request);
  }

  $async.Future<$2.RechargeSet> getHistory(
      $grpc.ServiceCall call, $2.EmptyHistoryRequest request);
}
