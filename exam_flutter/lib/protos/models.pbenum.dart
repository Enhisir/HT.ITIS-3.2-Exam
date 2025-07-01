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

class Position extends $pb.ProtobufEnum {
  static const Position Unexpected = Position._(0, _omitEnumNames ? '' : 'Unexpected');
  static const Position Analyst = Position._(1, _omitEnumNames ? '' : 'Analyst');
  static const Position Manager = Position._(2, _omitEnumNames ? '' : 'Manager');
  static const Position Designer = Position._(3, _omitEnumNames ? '' : 'Designer');
  static const Position Developer = Position._(4, _omitEnumNames ? '' : 'Developer');

  static const $core.List<Position> values = <Position> [
    Unexpected,
    Analyst,
    Manager,
    Designer,
    Developer,
  ];

  static final $core.List<Position?> _byValue = $pb.ProtobufEnum.$_initByValueList(values, 4);
  static Position? valueOf($core.int value) =>  value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Position._(super.value, super.name);
}


const $core.bool _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
