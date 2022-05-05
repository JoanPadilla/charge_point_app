///
//  Generated code. Do not modify.
//  source: charge_points.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class AllChargePoints extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AllChargePoints', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc'), createEmptyInstance: create)
    ..pc<RawChargePoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargePointsList', $pb.PbFieldType.PM, protoName: 'chargePointsList', subBuilder: RawChargePoint.create)
    ..hasRequiredFields = false
  ;

  AllChargePoints._() : super();
  factory AllChargePoints({
    $core.Iterable<RawChargePoint>? chargePointsList,
  }) {
    final _result = create();
    if (chargePointsList != null) {
      _result.chargePointsList.addAll(chargePointsList);
    }
    return _result;
  }
  factory AllChargePoints.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllChargePoints.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllChargePoints clone() => AllChargePoints()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllChargePoints copyWith(void Function(AllChargePoints) updates) => super.copyWith((message) => updates(message as AllChargePoints)) as AllChargePoints; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AllChargePoints create() => AllChargePoints._();
  AllChargePoints createEmptyInstance() => create();
  static $pb.PbList<AllChargePoints> createRepeated() => $pb.PbList<AllChargePoints>();
  @$core.pragma('dart2js:noInline')
  static AllChargePoints getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllChargePoints>(create);
  static AllChargePoints? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<RawChargePoint> get chargePointsList => $_getList(0);
}

class RawChargePoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RawChargePoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coordinates')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'available')
    ..hasRequiredFields = false
  ;

  RawChargePoint._() : super();
  factory RawChargePoint({
    $core.String? name,
    $core.String? coordinates,
    $core.bool? available,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (coordinates != null) {
      _result.coordinates = coordinates;
    }
    if (available != null) {
      _result.available = available;
    }
    return _result;
  }
  factory RawChargePoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawChargePoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RawChargePoint clone() => RawChargePoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RawChargePoint copyWith(void Function(RawChargePoint) updates) => super.copyWith((message) => updates(message as RawChargePoint)) as RawChargePoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RawChargePoint create() => RawChargePoint._();
  RawChargePoint createEmptyInstance() => create();
  static $pb.PbList<RawChargePoint> createRepeated() => $pb.PbList<RawChargePoint>();
  @$core.pragma('dart2js:noInline')
  static RawChargePoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawChargePoint>(create);
  static RawChargePoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get coordinates => $_getSZ(1);
  @$pb.TagNumber(2)
  set coordinates($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCoordinates() => $_has(1);
  @$pb.TagNumber(2)
  void clearCoordinates() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get available => $_getBF(2);
  @$pb.TagNumber(3)
  set available($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAvailable() => $_has(2);
  @$pb.TagNumber(3)
  void clearAvailable() => clearField(3);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'grpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

