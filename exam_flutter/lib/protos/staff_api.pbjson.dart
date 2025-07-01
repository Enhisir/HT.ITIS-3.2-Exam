// This is a generated file - do not edit.
//
// Generated from staff_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getStaffRequestDescriptor instead')
const GetStaffRequest$json = {
  '1': 'GetStaffRequest',
  '2': [
    {'1': 'PositionFilter', '3': 1, '4': 1, '5': 14, '6': '.staff.Position', '10': 'PositionFilter'},
  ],
};

/// Descriptor for `GetStaffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStaffRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRTdGFmZlJlcXVlc3QSNwoOUG9zaXRpb25GaWx0ZXIYASABKA4yDy5zdGFmZi5Qb3NpdG'
    'lvblIOUG9zaXRpb25GaWx0ZXI=');

@$core.Deprecated('Use getStaffResponseDescriptor instead')
const GetStaffResponse$json = {
  '1': 'GetStaffResponse',
  '2': [
    {'1': 'Members', '3': 1, '4': 3, '5': 11, '6': '.staff.StaffMember', '10': 'Members'},
  ],
};

/// Descriptor for `GetStaffResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getStaffResponseDescriptor = $convert.base64Decode(
    'ChBHZXRTdGFmZlJlc3BvbnNlEiwKB01lbWJlcnMYASADKAsyEi5zdGFmZi5TdGFmZk1lbWJlcl'
    'IHTWVtYmVycw==');

@$core.Deprecated('Use createStaffRequestDescriptor instead')
const CreateStaffRequest$json = {
  '1': 'CreateStaffRequest',
  '2': [
    {'1': 'FirstName', '3': 1, '4': 1, '5': 9, '10': 'FirstName'},
    {'1': 'LastName', '3': 3, '4': 1, '5': 9, '10': 'LastName'},
    {'1': 'Wage', '3': 4, '4': 1, '5': 5, '10': 'Wage'},
    {'1': 'Position', '3': 5, '4': 1, '5': 14, '6': '.staff.Position', '10': 'Position'},
  ],
};

/// Descriptor for `CreateStaffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createStaffRequestDescriptor = $convert.base64Decode(
    'ChJDcmVhdGVTdGFmZlJlcXVlc3QSHAoJRmlyc3ROYW1lGAEgASgJUglGaXJzdE5hbWUSGgoITG'
    'FzdE5hbWUYAyABKAlSCExhc3ROYW1lEhIKBFdhZ2UYBCABKAVSBFdhZ2USKwoIUG9zaXRpb24Y'
    'BSABKA4yDy5zdGFmZi5Qb3NpdGlvblIIUG9zaXRpb24=');

@$core.Deprecated('Use deleteStaffRequestDescriptor instead')
const DeleteStaffRequest$json = {
  '1': 'DeleteStaffRequest',
  '2': [
    {'1': 'StaffId', '3': 1, '4': 1, '5': 9, '10': 'StaffId'},
  ],
};

/// Descriptor for `DeleteStaffRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteStaffRequestDescriptor = $convert.base64Decode(
    'ChJEZWxldGVTdGFmZlJlcXVlc3QSGAoHU3RhZmZJZBgBIAEoCVIHU3RhZmZJZA==');

@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode(
    'CgVFbXB0eQ==');

