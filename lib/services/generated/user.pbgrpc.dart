///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $3;
export 'user.pb.dart';

class userClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$3.LoginRequest, $3.APIResponse>(
      '/grpc.user/login',
      ($3.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.APIResponse.fromBuffer(value));
  static final _$logout =
      $grpc.ClientMethod<$3.EmptyUserRequest, $3.APIResponse>(
          '/grpc.user/logout',
          ($3.EmptyUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $3.APIResponse.fromBuffer(value));

  userClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.APIResponse> login($3.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$3.APIResponse> logout($3.EmptyUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }
}

abstract class userServiceBase extends $grpc.Service {
  $core.String get $name => 'grpc.user';

  userServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.LoginRequest, $3.APIResponse>(
        'login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.LoginRequest.fromBuffer(value),
        ($3.APIResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.EmptyUserRequest, $3.APIResponse>(
        'logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.EmptyUserRequest.fromBuffer(value),
        ($3.APIResponse value) => value.writeToBuffer()));
  }

  $async.Future<$3.APIResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$3.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$3.APIResponse> logout_Pre($grpc.ServiceCall call,
      $async.Future<$3.EmptyUserRequest> request) async {
    return logout(call, await request);
  }

  $async.Future<$3.APIResponse> login(
      $grpc.ServiceCall call, $3.LoginRequest request);
  $async.Future<$3.APIResponse> logout(
      $grpc.ServiceCall call, $3.EmptyUserRequest request);
}
