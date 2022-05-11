///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package, constant_identifier_names

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use loginRequestDescriptor instead')
const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

/// Descriptor for `LoginRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loginRequestDescriptor = $convert.base64Decode('CgxMb2dpblJlcXVlc3QSGgoIdXNlcm5hbWUYASABKAlSCHVzZXJuYW1lEhoKCHBhc3N3b3JkGAIgASgJUghwYXNzd29yZA==');
@$core.Deprecated('Use aPIResponseDescriptor instead')
const APIResponse$json = const {
  '1': 'APIResponse',
  '2': const [
    const {'1': 'responsemessage', '3': 1, '4': 1, '5': 9, '10': 'responsemessage'},
    const {'1': 'responseCode', '3': 2, '4': 1, '5': 5, '10': 'responseCode'},
  ],
};

/// Descriptor for `APIResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIResponseDescriptor = $convert.base64Decode('CgtBUElSZXNwb25zZRIoCg9yZXNwb25zZW1lc3NhZ2UYASABKAlSD3Jlc3BvbnNlbWVzc2FnZRIiCgxyZXNwb25zZUNvZGUYAiABKAVSDHJlc3BvbnNlQ29kZQ==');
@$core.Deprecated('Use emptyUserRequestDescriptor instead')
const EmptyUserRequest$json = const {
  '1': 'EmptyUserRequest',
};

/// Descriptor for `EmptyUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyUserRequestDescriptor = $convert.base64Decode('ChBFbXB0eVVzZXJSZXF1ZXN0');
