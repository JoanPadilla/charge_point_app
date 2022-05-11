///
//  Generated code. Do not modify.
//  source: incidence.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'incidence.pb.dart' as $1;
export 'incidence.pb.dart';

class IncidenceServiceClient extends $grpc.Client {
  static final _$reportIncidence =
      $grpc.ClientMethod<$1.Incidence, $1.EmptyIncidenceResponse>(
          '/grpc.IncidenceService/reportIncidence',
          ($1.Incidence value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.EmptyIncidenceResponse.fromBuffer(value));

  IncidenceServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.EmptyIncidenceResponse> reportIncidence(
      $1.Incidence request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$reportIncidence, request, options: options);
  }
}

abstract class IncidenceServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc.IncidenceService';

  IncidenceServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.Incidence, $1.EmptyIncidenceResponse>(
        'reportIncidence',
        reportIncidence_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.Incidence.fromBuffer(value),
        ($1.EmptyIncidenceResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.EmptyIncidenceResponse> reportIncidence_Pre(
      $grpc.ServiceCall call, $async.Future<$1.Incidence> request) async {
    return reportIncidence(call, await request);
  }

  $async.Future<$1.EmptyIncidenceResponse> reportIncidence(
      $grpc.ServiceCall call, $1.Incidence request);
}
