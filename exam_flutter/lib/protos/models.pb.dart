// This is a generated file - do not edit.
//
// Generated from models.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'models.pbenum.dart';

class StaffMember extends $pb.GeneratedMessage {
  factory StaffMember({
    $core.String? id,
    $core.String? firstName,
    $core.String? lastName,
    $core.int? wage,
    Position? position,
  }) {
    final result = create();
    if (id != null) result.id = id;
    if (firstName != null) result.firstName = firstName;
    if (lastName != null) result.lastName = lastName;
    if (wage != null) result.wage = wage;
    if (position != null) result.position = position;
    return result;
  }

  StaffMember._();

  factory StaffMember.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory StaffMember.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StaffMember', package: const $pb.PackageName(_omitMessageNames ? '' : 'staff'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Id', protoName: 'Id')
    ..aOS(2, _omitFieldNames ? '' : 'FirstName', protoName: 'FirstName')
    ..aOS(4, _omitFieldNames ? '' : 'LastName', protoName: 'LastName')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'Wage', $pb.PbFieldType.O3, protoName: 'Wage')
    ..e<Position>(6, _omitFieldNames ? '' : 'Position', $pb.PbFieldType.OE, protoName: 'Position', defaultOrMaker: Position.Unexpected, valueOf: Position.valueOf, enumValues: Position.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StaffMember clone() => StaffMember()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  StaffMember copyWith(void Function(StaffMember) updates) => super.copyWith((message) => updates(message as StaffMember)) as StaffMember;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StaffMember create() => StaffMember._();
  @$core.override
  StaffMember createEmptyInstance() => create();
  static $pb.PbList<StaffMember> createRepeated() => $pb.PbList<StaffMember>();
  @$core.pragma('dart2js:noInline')
  static StaffMember getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StaffMember>(create);
  static StaffMember? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => $_clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => $_clearField(2);

  @$pb.TagNumber(4)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(4)
  set lastName($core.String value) => $_setString(2, value);
  @$pb.TagNumber(4)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(4)
  void clearLastName() => $_clearField(4);

  @$pb.TagNumber(5)
  $core.int get wage => $_getIZ(3);
  @$pb.TagNumber(5)
  set wage($core.int value) => $_setSignedInt32(3, value);
  @$pb.TagNumber(5)
  $core.bool hasWage() => $_has(3);
  @$pb.TagNumber(5)
  void clearWage() => $_clearField(5);

  @$pb.TagNumber(6)
  Position get position => $_getN(4);
  @$pb.TagNumber(6)
  set position(Position value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasPosition() => $_has(4);
  @$pb.TagNumber(6)
  void clearPosition() => $_clearField(6);
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
