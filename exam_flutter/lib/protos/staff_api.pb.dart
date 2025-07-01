// This is a generated file - do not edit.
//
// Generated from staff_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pb.dart' as $1;

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

class GetStaffRequest extends $pb.GeneratedMessage {
  factory GetStaffRequest({
    $1.Position? positionFilter,
  }) {
    final result = create();
    if (positionFilter != null) result.positionFilter = positionFilter;
    return result;
  }

  GetStaffRequest._();

  factory GetStaffRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetStaffRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStaffRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'staff'), createEmptyInstance: create)
    ..e<$1.Position>(1, _omitFieldNames ? '' : 'PositionFilter', $pb.PbFieldType.OE, protoName: 'PositionFilter', defaultOrMaker: $1.Position.Unexpected, valueOf: $1.Position.valueOf, enumValues: $1.Position.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetStaffRequest clone() => GetStaffRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetStaffRequest copyWith(void Function(GetStaffRequest) updates) => super.copyWith((message) => updates(message as GetStaffRequest)) as GetStaffRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStaffRequest create() => GetStaffRequest._();
  @$core.override
  GetStaffRequest createEmptyInstance() => create();
  static $pb.PbList<GetStaffRequest> createRepeated() => $pb.PbList<GetStaffRequest>();
  @$core.pragma('dart2js:noInline')
  static GetStaffRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStaffRequest>(create);
  static GetStaffRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Position get positionFilter => $_getN(0);
  @$pb.TagNumber(1)
  set positionFilter($1.Position value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasPositionFilter() => $_has(0);
  @$pb.TagNumber(1)
  void clearPositionFilter() => $_clearField(1);
}

class GetStaffResponse extends $pb.GeneratedMessage {
  factory GetStaffResponse({
    $core.Iterable<$1.StaffMember>? members,
  }) {
    final result = create();
    if (members != null) result.members.addAll(members);
    return result;
  }

  GetStaffResponse._();

  factory GetStaffResponse.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory GetStaffResponse.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetStaffResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'staff'), createEmptyInstance: create)
    ..pc<$1.StaffMember>(1, _omitFieldNames ? '' : 'Members', $pb.PbFieldType.PM, protoName: 'Members', subBuilder: $1.StaffMember.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetStaffResponse clone() => GetStaffResponse()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetStaffResponse copyWith(void Function(GetStaffResponse) updates) => super.copyWith((message) => updates(message as GetStaffResponse)) as GetStaffResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetStaffResponse create() => GetStaffResponse._();
  @$core.override
  GetStaffResponse createEmptyInstance() => create();
  static $pb.PbList<GetStaffResponse> createRepeated() => $pb.PbList<GetStaffResponse>();
  @$core.pragma('dart2js:noInline')
  static GetStaffResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetStaffResponse>(create);
  static GetStaffResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<$1.StaffMember> get members => $_getList(0);
}

class CreateStaffRequest extends $pb.GeneratedMessage {
  factory CreateStaffRequest({
    $core.String? firstName,
    $core.String? lastName,
    $core.int? wage,
    $1.Position? position,
  }) {
    final result = create();
    if (firstName != null) result.firstName = firstName;
    if (lastName != null) result.lastName = lastName;
    if (wage != null) result.wage = wage;
    if (position != null) result.position = position;
    return result;
  }

  CreateStaffRequest._();

  factory CreateStaffRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory CreateStaffRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateStaffRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'staff'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'FirstName', protoName: 'FirstName')
    ..aOS(3, _omitFieldNames ? '' : 'LastName', protoName: 'LastName')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'Wage', $pb.PbFieldType.O3, protoName: 'Wage')
    ..e<$1.Position>(5, _omitFieldNames ? '' : 'Position', $pb.PbFieldType.OE, protoName: 'Position', defaultOrMaker: $1.Position.Unexpected, valueOf: $1.Position.valueOf, enumValues: $1.Position.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateStaffRequest clone() => CreateStaffRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateStaffRequest copyWith(void Function(CreateStaffRequest) updates) => super.copyWith((message) => updates(message as CreateStaffRequest)) as CreateStaffRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateStaffRequest create() => CreateStaffRequest._();
  @$core.override
  CreateStaffRequest createEmptyInstance() => create();
  static $pb.PbList<CreateStaffRequest> createRepeated() => $pb.PbList<CreateStaffRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateStaffRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateStaffRequest>(create);
  static CreateStaffRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => $_clearField(1);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(3)
  set lastName($core.String value) => $_setString(1, value);
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(3)
  void clearLastName() => $_clearField(3);

  @$pb.TagNumber(4)
  $core.int get wage => $_getIZ(2);
  @$pb.TagNumber(4)
  set wage($core.int value) => $_setSignedInt32(2, value);
  @$pb.TagNumber(4)
  $core.bool hasWage() => $_has(2);
  @$pb.TagNumber(4)
  void clearWage() => $_clearField(4);

  @$pb.TagNumber(5)
  $1.Position get position => $_getN(3);
  @$pb.TagNumber(5)
  set position($1.Position value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasPosition() => $_has(3);
  @$pb.TagNumber(5)
  void clearPosition() => $_clearField(5);
}

class DeleteStaffRequest extends $pb.GeneratedMessage {
  factory DeleteStaffRequest({
    $core.String? staffId,
  }) {
    final result = create();
    if (staffId != null) result.staffId = staffId;
    return result;
  }

  DeleteStaffRequest._();

  factory DeleteStaffRequest.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory DeleteStaffRequest.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteStaffRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'staff'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'StaffId', protoName: 'StaffId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteStaffRequest clone() => DeleteStaffRequest()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteStaffRequest copyWith(void Function(DeleteStaffRequest) updates) => super.copyWith((message) => updates(message as DeleteStaffRequest)) as DeleteStaffRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteStaffRequest create() => DeleteStaffRequest._();
  @$core.override
  DeleteStaffRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteStaffRequest> createRepeated() => $pb.PbList<DeleteStaffRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteStaffRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteStaffRequest>(create);
  static DeleteStaffRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get staffId => $_getSZ(0);
  @$pb.TagNumber(1)
  set staffId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasStaffId() => $_has(0);
  @$pb.TagNumber(1)
  void clearStaffId() => $_clearField(1);
}

class Empty extends $pb.GeneratedMessage {
  factory Empty() => create();

  Empty._();

  factory Empty.fromBuffer($core.List<$core.int> data, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(data, registry);
  factory Empty.fromJson($core.String json, [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Empty', package: const $pb.PackageName(_omitMessageNames ? '' : 'staff'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  @$core.override
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}


const $core.bool _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
