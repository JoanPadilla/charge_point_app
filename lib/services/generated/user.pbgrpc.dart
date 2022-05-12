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

class UserServiceClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$3.LoginRequest, $3.LoginResponse>(
      '/charge_point_app.UserService/login',
      ($3.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.LoginResponse.fromBuffer(value));
  static final _$logout =
      $grpc.ClientMethod<$3.EmptyUserRequest, $3.EmptyUserRequest>(
          '/charge_point_app.UserService/logout',
          ($3.EmptyUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.EmptyUserRequest.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.LoginResponse> login($3.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }

  $grpc.ResponseFuture<$3.EmptyUserRequest> logout($3.EmptyUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'charge_point_app.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.LoginRequest, $3.LoginResponse>(
        'login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.LoginRequest.fromBuffer(value),
        ($3.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.EmptyUserRequest, $3.EmptyUserRequest>(
        'logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.EmptyUserRequest.fromBuffer(value),
        ($3.EmptyUserRequest value) => value.writeToBuffer()));
  }

  $async.Future<$3.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$3.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$3.EmptyUserRequest> logout_Pre($grpc.ServiceCall call,
      $async.Future<$3.EmptyUserRequest> request) async {
    return logout(call, await request);
  }

  $async.Future<$3.LoginResponse> login(
      $grpc.ServiceCall call, $3.LoginRequest request);
  $async.Future<$3.EmptyUserRequest> logout(
      $grpc.ServiceCall call, $3.EmptyUserRequest request);
}
