///
//  Generated code. Do not modify.
//  source: charge_point.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ChargePointSet extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChargePointSet', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..pc<ChargePoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargePoints', $pb.PbFieldType.PM, protoName: 'chargePoints', subBuilder: ChargePoint.create)
    ..hasRequiredFields = false
  ;

  ChargePointSet._() : super();
  factory ChargePointSet({
    $core.Iterable<ChargePoint>? chargePoints,
  }) {
    final _result = create();
    if (chargePoints != null) {
      _result.chargePoints.addAll(chargePoints);
    }
    return _result;
  }
  factory ChargePointSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChargePointSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChargePointSet clone() => ChargePointSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChargePointSet copyWith(void Function(ChargePointSet) updates) => super.copyWith((message) => updates(message as ChargePointSet)) as ChargePointSet; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChargePointSet create() => ChargePointSet._();
  ChargePointSet createEmptyInstance() => create();
  static $pb.PbList<ChargePointSet> createRepeated() => $pb.PbList<ChargePointSet>();
  @$core.pragma('dart2js:noInline')
  static ChargePointSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChargePointSet>(create);
  static ChargePointSet? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChargePoint> get chargePoints => $_getList(0);
}

class ChargePoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChargePoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'coordinates')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'available')
    ..hasRequiredFields = false
  ;

  ChargePoint._() : super();
  factory ChargePoint({
    $core.String? id,
    $core.String? coordinates,
    $core.bool? available,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (coordinates != null) {
      _result.coordinates = coordinates;
    }
    if (available != null) {
      _result.available = available;
    }
    return _result;
  }
  factory ChargePoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChargePoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChargePoint clone() => ChargePoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChargePoint copyWith(void Function(ChargePoint) updates) => super.copyWith((message) => updates(message as ChargePoint)) as ChargePoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChargePoint create() => ChargePoint._();
  ChargePoint createEmptyInstance() => create();
  static $pb.PbList<ChargePoint> createRepeated() => $pb.PbList<ChargePoint>();
  @$core.pragma('dart2js:noInline')
  static ChargePoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChargePoint>(create);
  static ChargePoint? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

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

class ImageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargePointId', protoName: 'chargePointId')
    ..hasRequiredFields = false
  ;

  ImageRequest._() : super();
  factory ImageRequest({
    $core.String? chargePointId,
  }) {
    final _result = create();
    if (chargePointId != null) {
      _result.chargePointId = chargePointId;
    }
    return _result;
  }
  factory ImageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageRequest clone() => ImageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageRequest copyWith(void Function(ImageRequest) updates) => super.copyWith((message) => updates(message as ImageRequest)) as ImageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageRequest create() => ImageRequest._();
  ImageRequest createEmptyInstance() => create();
  static $pb.PbList<ImageRequest> createRepeated() => $pb.PbList<ImageRequest>();
  @$core.pragma('dart2js:noInline')
  static ImageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageRequest>(create);
  static ImageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chargePointId => $_getSZ(0);
  @$pb.TagNumber(1)
  set chargePointId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChargePointId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChargePointId() => clearField(1);
}

class ImageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ImageResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'imageBytes', $pb.PbFieldType.OY, protoName: 'imageBytes')
    ..hasRequiredFields = false
  ;

  ImageResponse._() : super();
  factory ImageResponse({
    $core.List<$core.int>? imageBytes,
  }) {
    final _result = create();
    if (imageBytes != null) {
      _result.imageBytes = imageBytes;
    }
    return _result;
  }
  factory ImageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageResponse clone() => ImageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageResponse copyWith(void Function(ImageResponse) updates) => super.copyWith((message) => updates(message as ImageResponse)) as ImageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ImageResponse create() => ImageResponse._();
  ImageResponse createEmptyInstance() => create();
  static $pb.PbList<ImageResponse> createRepeated() => $pb.PbList<ImageResponse>();
  @$core.pragma('dart2js:noInline')
  static ImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageResponse>(create);
  static ImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get imageBytes => $_getN(0);
  @$pb.TagNumber(1)
  set imageBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImageBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearImageBytes() => clearField(1);
}

class EmptyCPRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyCPRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyCPRequest._() : super();
  factory EmptyCPRequest() => create();
  factory EmptyCPRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyCPRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyCPRequest clone() => EmptyCPRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyCPRequest copyWith(void Function(EmptyCPRequest) updates) => super.copyWith((message) => updates(message as EmptyCPRequest)) as EmptyCPRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyCPRequest create() => EmptyCPRequest._();
  EmptyCPRequest createEmptyInstance() => create();
  static $pb.PbList<EmptyCPRequest> createRepeated() => $pb.PbList<EmptyCPRequest>();
  @$core.pragma('dart2js:noInline')
  static EmptyCPRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyCPRequest>(create);
  static EmptyCPRequest? _defaultInstance;
}

