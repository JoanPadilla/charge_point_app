///
//  Generated code. Do not modify.
//  source: charge_point.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package, constant_identifier_names

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use chargePointSetDescriptor instead')
const ChargePointSet$json = const {
  '1': 'ChargePointSet',
  '2': const [
    const {'1': 'chargePoints', '3': 1, '4': 3, '5': 11, '6': '.grpc.ChargePoint', '10': 'chargePoints'},
  ],
};

/// Descriptor for `ChargePointSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargePointSetDescriptor = $convert.base64Decode('Cg5DaGFyZ2VQb2ludFNldBI1CgxjaGFyZ2VQb2ludHMYASADKAsyES5ncnBjLkNoYXJnZVBvaW50UgxjaGFyZ2VQb2ludHM=');
@$core.Deprecated('Use chargePointDescriptor instead')
const ChargePoint$json = const {
  '1': 'ChargePoint',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'coordinates', '3': 2, '4': 1, '5': 9, '10': 'coordinates'},
    const {'1': 'available', '3': 3, '4': 1, '5': 8, '10': 'available'},
  ],
};

/// Descriptor for `ChargePoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chargePointDescriptor = $convert.base64Decode('CgtDaGFyZ2VQb2ludBIOCgJpZBgBIAEoCVICaWQSIAoLY29vcmRpbmF0ZXMYAiABKAlSC2Nvb3JkaW5hdGVzEhwKCWF2YWlsYWJsZRgDIAEoCFIJYXZhaWxhYmxl');
@$core.Deprecated('Use idRequestDescriptor instead')
const IdRequest$json = const {
  '1': 'IdRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `IdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List idRequestDescriptor = $convert.base64Decode('CglJZFJlcXVlc3QSDgoCaWQYASABKAlSAmlk');
@$core.Deprecated('Use imageResponseDescriptor instead')
const ImageResponse$json = const {
  '1': 'ImageResponse',
  '2': const [
    const {'1': 'bytes', '3': 1, '4': 1, '5': 9, '10': 'bytes'},
  ],
};

/// Descriptor for `ImageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageResponseDescriptor = $convert.base64Decode('Cg1JbWFnZVJlc3BvbnNlEhQKBWJ5dGVzGAEgASgJUgVieXRlcw==');
@$core.Deprecated('Use emptyCPRequestDescriptor instead')
const EmptyCPRequest$json = const {
  '1': 'EmptyCPRequest',
};

/// Descriptor for `EmptyCPRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyCPRequestDescriptor = $convert.base64Decode('Cg5FbXB0eUNQUmVxdWVzdA==');
