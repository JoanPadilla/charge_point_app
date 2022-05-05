///
//  Generated code. Do not modify.
//  source: charge_points.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use allChargePointsDescriptor instead')
const AllChargePoints$json = const {
  '1': 'AllChargePoints',
  '2': const [
    const {'1': 'chargePointsList', '3': 1, '4': 3, '5': 11, '6': '.grpc.RawChargePoint', '10': 'chargePointsList'},
  ],
};

/// Descriptor for `AllChargePoints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allChargePointsDescriptor = $convert.base64Decode('Cg9BbGxDaGFyZ2VQb2ludHMSQAoQY2hhcmdlUG9pbnRzTGlzdBgBIAMoCzIULmdycGMuUmF3Q2hhcmdlUG9pbnRSEGNoYXJnZVBvaW50c0xpc3Q=');
@$core.Deprecated('Use rawChargePointDescriptor instead')
const RawChargePoint$json = const {
  '1': 'RawChargePoint',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'coordinates', '3': 2, '4': 1, '5': 9, '10': 'coordinates'},
    const {'1': 'available', '3': 3, '4': 1, '5': 8, '10': 'available'},
  ],
};

/// Descriptor for `RawChargePoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rawChargePointDescriptor = $convert.base64Decode('Cg5SYXdDaGFyZ2VQb2ludBISCgRuYW1lGAEgASgJUgRuYW1lEiAKC2Nvb3JkaW5hdGVzGAIgASgJUgtjb29yZGluYXRlcxIcCglhdmFpbGFibGUYAyABKAhSCWF2YWlsYWJsZQ==');
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
