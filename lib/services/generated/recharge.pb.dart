///
//  Generated code. Do not modify.
//  source: recharge.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RechargeSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RechargeSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc'), createEmptyInstance: create)
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
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Recharge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'day', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'month', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'year', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hour', $pb.PbFieldType.O3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minute', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', $pb.PbFieldType.O3)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargePointId', protoName: 'chargePointId')
    ..hasRequiredFields = false
  ;

  Recharge._() : super();
  factory Recharge({
    $core.int? day,
    $core.int? month,
    $core.int? year,
    $core.int? hour,
    $core.int? minute,
    $core.int? duration,
    $core.String? chargePointId,
  }) {
    final _result = create();
    if (day != null) {
      _result.day = day;
    }
    if (month != null) {
      _result.month = month;
    }
    if (year != null) {
      _result.year = year;
    }
    if (hour != null) {
      _result.hour = hour;
    }
    if (minute != null) {
      _result.minute = minute;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    if (chargePointId != null) {
      _result.chargePointId = chargePointId;
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
  $core.int get day => $_getIZ(0);
  @$pb.TagNumber(1)
  set day($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDay() => $_has(0);
  @$pb.TagNumber(1)
  void clearDay() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get month => $_getIZ(1);
  @$pb.TagNumber(2)
  set month($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMonth() => $_has(1);
  @$pb.TagNumber(2)
  void clearMonth() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get year => $_getIZ(2);
  @$pb.TagNumber(3)
  set year($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasYear() => $_has(2);
  @$pb.TagNumber(3)
  void clearYear() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get hour => $_getIZ(3);
  @$pb.TagNumber(4)
  set hour($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHour() => $_has(3);
  @$pb.TagNumber(4)
  void clearHour() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get minute => $_getIZ(4);
  @$pb.TagNumber(5)
  set minute($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMinute() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinute() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get duration => $_getIZ(5);
  @$pb.TagNumber(6)
  set duration($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDuration() => $_has(5);
  @$pb.TagNumber(6)
  void clearDuration() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get chargePointId => $_getSZ(6);
  @$pb.TagNumber(7)
  set chargePointId($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasChargePointId() => $_has(6);
  @$pb.TagNumber(7)
  void clearChargePointId() => clearField(7);
}

class EmptyHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyHistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc'), createEmptyInstance: create)
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

