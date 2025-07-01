// This is a generated file - do not edit.
//
// Generated from models.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use positionDescriptor instead')
const Position$json = {
  '1': 'Position',
  '2': [
    {'1': 'Unexpected', '2': 0},
    {'1': 'Analyst', '2': 1},
    {'1': 'Manager', '2': 2},
    {'1': 'Designer', '2': 3},
    {'1': 'Developer', '2': 4},
  ],
};

/// Descriptor for `Position`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List positionDescriptor = $convert.base64Decode(
    'CghQb3NpdGlvbhIOCgpVbmV4cGVjdGVkEAASCwoHQW5hbHlzdBABEgsKB01hbmFnZXIQAhIMCg'
    'hEZXNpZ25lchADEg0KCURldmVsb3BlchAE');

@$core.Deprecated('Use staffMemberDescriptor instead')
const StaffMember$json = {
  '1': 'StaffMember',
  '2': [
    {'1': 'Id', '3': 1, '4': 1, '5': 9, '10': 'Id'},
    {'1': 'FirstName', '3': 2, '4': 1, '5': 9, '10': 'FirstName'},
    {'1': 'LastName', '3': 4, '4': 1, '5': 9, '10': 'LastName'},
    {'1': 'Wage', '3': 5, '4': 1, '5': 5, '10': 'Wage'},
    {'1': 'Position', '3': 6, '4': 1, '5': 14, '6': '.staff.Position', '10': 'Position'},
  ],
};

/// Descriptor for `StaffMember`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List staffMemberDescriptor = $convert.base64Decode(
    'CgtTdGFmZk1lbWJlchIOCgJJZBgBIAEoCVICSWQSHAoJRmlyc3ROYW1lGAIgASgJUglGaXJzdE'
    '5hbWUSGgoITGFzdE5hbWUYBCABKAlSCExhc3ROYW1lEhIKBFdhZ2UYBSABKAVSBFdhZ2USKwoI'
    'UG9zaXRpb24YBiABKA4yDy5zdGFmZi5Qb3NpdGlvblIIUG9zaXRpb24=');

