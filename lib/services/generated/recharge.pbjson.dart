///
//  Generated code. Do not modify.
//  source: recharge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package, constant_identifier_names

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use rechargeSetDescriptor instead')
const RechargeSet$json = const {
  '1': 'RechargeSet',
  '2': const [
    const {'1': 'recharges', '3': 1, '4': 3, '5': 11, '6': '.grpc.Recharge', '10': 'recharges'},
  ],
};

/// Descriptor for `RechargeSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rechargeSetDescriptor = $convert.base64Decode('CgtSZWNoYXJnZVNldBIsCglyZWNoYXJnZXMYASADKAsyDi5ncnBjLlJlY2hhcmdlUglyZWNoYXJnZXM=');
@$core.Deprecated('Use rechargeDescriptor instead')
const Recharge$json = const {
  '1': 'Recharge',
  '2': const [
    const {'1': 'day', '3': 1, '4': 1, '5': 5, '10': 'day'},
    const {'1': 'month', '3': 2, '4': 1, '5': 5, '10': 'month'},
    const {'1': 'year', '3': 3, '4': 1, '5': 5, '10': 'year'},
    const {'1': 'hour', '3': 4, '4': 1, '5': 5, '10': 'hour'},
    const {'1': 'minute', '3': 5, '4': 1, '5': 5, '10': 'minute'},
    const {'1': 'duration', '3': 6, '4': 1, '5': 5, '10': 'duration'},
    const {'1': 'chargePointId', '3': 7, '4': 1, '5': 9, '10': 'chargePointId'},
  ],
};

/// Descriptor for `Recharge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rechargeDescriptor = $convert.base64Decode('CghSZWNoYXJnZRIQCgNkYXkYASABKAVSA2RheRIUCgVtb250aBgCIAEoBVIFbW9udGgSEgoEeWVhchgDIAEoBVIEeWVhchISCgRob3VyGAQgASgFUgRob3VyEhYKBm1pbnV0ZRgFIAEoBVIGbWludXRlEhoKCGR1cmF0aW9uGAYgASgFUghkdXJhdGlvbhIkCg1jaGFyZ2VQb2ludElkGAcgASgJUg1jaGFyZ2VQb2ludElk');
@$core.Deprecated('Use emptyHistoryRequestDescriptor instead')
const EmptyHistoryRequest$json = const {
  '1': 'EmptyHistoryRequest',
};

/// Descriptor for `EmptyHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyHistoryRequestDescriptor = $convert.base64Decode('ChNFbXB0eUhpc3RvcnlSZXF1ZXN0');
