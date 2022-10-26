///
//  Generated code. Do not modify.
//  source: recharge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $4;
import 'charge_point.pb.dart' as $0;

class RechargeSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RechargeSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..pc<Recharge>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recharges', $pb.PbFieldType.PM, subBuilder: Recharge.create)
    ..hasRequiredFields = false
  ;

  RechargeSet._() : super();
  factory RechargeSet({
    $core.Iterable<Recharge>? recharges,
  }) {
    final _result = create();
    if (recharges != null) {
      _result.recharges.addAll(recharges);
    }
    return _result;
  }
  factory RechargeSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RechargeSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RechargeSet clone() => RechargeSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RechargeSet copyWith(void Function(RechargeSet) updates) => super.copyWith((message) => updates(message as RechargeSet)) as RechargeSet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RechargeSet create() => RechargeSet._();
  RechargeSet createEmptyInstance() => create();
  static $pb.PbList<RechargeSet> createRepeated() => $pb.PbList<RechargeSet>();
  @$core.pragma('dart2js:noInline')
  static RechargeSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RechargeSet>(create);
  static RechargeSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Recharge> get recharges => $_getList(0);
}

class Recharge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Recharge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..aOM<$4.Timestamp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dateTime', protoName: 'dateTime', subBuilder: $4.Timestamp.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', $pb.PbFieldType.O3)
    ..aOM<$0.ChargePoint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargePoint', protoName: 'chargePoint', subBuilder: $0.ChargePoint.create)
    ..hasRequiredFields = false
  ;

  Recharge._() : super();
  factory Recharge({
    $4.Timestamp? dateTime,
    $core.int? duration,
    $0.ChargePoint? chargePoint,
  }) {
    final _result = create();
    if (dateTime != null) {
      _result.dateTime = dateTime;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    if (chargePoint != null) {
      _result.chargePoint = chargePoint;
    }
    return _result;
  }
  factory Recharge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Recharge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Recharge clone() => Recharge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Recharge copyWith(void Function(Recharge) updates) => super.copyWith((message) => updates(message as Recharge)) as Recharge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Recharge create() => Recharge._();
  Recharge createEmptyInstance() => create();
  static $pb.PbList<Recharge> createRepeated() => $pb.PbList<Recharge>();
  @$core.pragma('dart2js:noInline')
  static Recharge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Recharge>(create);
  static Recharge? _defaultInstance;

  @$pb.TagNumber(1)
  $4.Timestamp get dateTime => $_getN(0);
  @$pb.TagNumber(1)
  set dateTime($4.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDateTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearDateTime() => clearField(1);
  @$pb.TagNumber(1)
  $4.Timestamp ensureDateTime() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => clearField(2);

  @$pb.TagNumber(3)
  $0.ChargePoint get chargePoint => $_getN(2);
  @$pb.TagNumber(3)
  set chargePoint($0.ChargePoint v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChargePoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearChargePoint() => clearField(3);
  @$pb.TagNumber(3)
  $0.ChargePoint ensureChargePoint() => $_ensure(2);
}

class EmptyHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyHistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyHistoryRequest._() : super();
  factory EmptyHistoryRequest() => create();
  factory EmptyHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyHistoryRequest clone() => EmptyHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyHistoryRequest copyWith(void Function(EmptyHistoryRequest) updates) => super.copyWith((message) => updates(message as EmptyHistoryRequest)) as EmptyHistoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyHistoryRequest create() => EmptyHistoryRequest._();
  EmptyHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyHistoryRequest> createRepeated() => $pb.PbList<EmptyHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyHistoryRequest>(create);
  static EmptyHistoryRequest? _defaultInstance;
}

