///
//  Generated code. Do not modify.
//  source: recharge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use rechargeSetDescriptor instead')
const RechargeSet$json = const {
  '1': 'RechargeSet',
  '2': const [
    const {'1': 'recharges', '3': 1, '4': 3, '5': 11, '6': '.charge_point_app.Recharge', '10': 'recharges'},
  ],
};

/// Descriptor for `RechargeSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rechargeSetDescriptor = $convert.base64Decode('CgtSZWNoYXJnZVNldBI4CglyZWNoYXJnZXMYASADKAsyGi5jaGFyZ2VfcG9pbnRfYXBwLlJlY2hhcmdlUglyZWNoYXJnZXM=');
@$core.Deprecated('Use rechargeDescriptor instead')
const Recharge$json = const {
  '1': 'Recharge',
  '2': const [
    const {'1': 'dateTime', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'dateTime'},
    const {'1': 'duration', '3': 2, '4': 1, '5': 5, '10': 'duration'},
    const {'1': 'chargePoint', '3': 3, '4': 1, '5': 11, '6': '.charge_point_app.ChargePoint', '10': 'chargePoint'},
  ],
};

/// Descriptor for `Recharge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rechargeDescriptor = $convert.base64Decode('CghSZWNoYXJnZRI2CghkYXRlVGltZRgBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSCGRhdGVUaW1lEhoKCGR1cmF0aW9uGAIgASgFUghkdXJhdGlvbhI/CgtjaGFyZ2VQb2ludBgDIAEoCzIdLmNoYXJnZV9wb2ludF9hcHAuQ2hhcmdlUG9pbnRSC2NoYXJnZVBvaW50');
@$core.Deprecated('Use emptyHistoryRequestDescriptor instead')
const EmptyHistoryRequest$json = const {
  '1': 'EmptyHistoryRequest',
};

/// Descriptor for `EmptyHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyHistoryRequestDescriptor = $convert.base64Decode('ChNFbXB0eUhpc3RvcnlSZXF1ZXN0');
