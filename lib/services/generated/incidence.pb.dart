///
//  Generated code. Do not modify.
//  source: incidence.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Incidence extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Incidence', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subject')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chargePointId', protoName: 'chargePointId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..hasRequiredFields = false
  ;

  Incidence._() : super();
  factory Incidence({
    $core.String? subject,
    $core.String? chargePointId,
    $core.String? description,
  }) {
    final _result = create();
    if (subject != null) {
      _result.subject = subject;
    }
    if (chargePointId != null) {
      _result.chargePointId = chargePointId;
    }
    if (description != null) {
      _result.description = description;
    }
    return _result;
  }
  factory Incidence.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Incidence.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Incidence clone() => Incidence()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Incidence copyWith(void Function(Incidence) updates) => super.copyWith((message) => updates(message as Incidence)) as Incidence; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Incidence create() => Incidence._();
  Incidence createEmptyInstance() => create();
  static $pb.PbList<Incidence> createRepeated() => $pb.PbList<Incidence>();
  @$core.pragma('dart2js:noInline')
  static Incidence getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Incidence>(create);
  static Incidence? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subject => $_getSZ(0);
  @$pb.TagNumber(1)
  set subject($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubject() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubject() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get chargePointId => $_getSZ(1);
  @$pb.TagNumber(2)
  set chargePointId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChargePointId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChargePointId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get description => $_getSZ(2);
  @$pb.TagNumber(3)
  set description($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescription() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescription() => clearField(3);
}

class EmptyIncidenceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EmptyIncidenceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'charge_point_app'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  EmptyIncidenceResponse._() : super();
  factory EmptyIncidenceResponse() => create();
  factory EmptyIncidenceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EmptyIncidenceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EmptyIncidenceResponse clone() => EmptyIncidenceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EmptyIncidenceResponse copyWith(void Function(EmptyIncidenceResponse) updates) => super.copyWith((message) => updates(message as EmptyIncidenceResponse)) as EmptyIncidenceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EmptyIncidenceResponse create() => EmptyIncidenceResponse._();
  EmptyIncidenceResponse createEmptyInstance() => create();
  static $pb.PbList<EmptyIncidenceResponse> createRepeated() => $pb.PbList<EmptyIncidenceResponse>();
  @$core.pragma('dart2js:noInline')
  static EmptyIncidenceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EmptyIncidenceResponse>(create);
  static EmptyIncidenceResponse? _defaultInstance;
}

