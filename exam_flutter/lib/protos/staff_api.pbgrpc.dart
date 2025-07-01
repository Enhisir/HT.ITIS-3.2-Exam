// This is a generated file - do not edit.
//
// Generated from staff_api.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pb.dart' as $1;
import 'staff_api.pb.dart' as $0;

export 'staff_api.pb.dart';

@$pb.GrpcServiceName('staff.StaffApi')
class StaffApiClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  StaffApiClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GetStaffResponse> getStaff($0.GetStaffRequest request, {$grpc.CallOptions? options,}) {
    return $createUnaryCall(_$getStaff, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> createStaffMember($0.CreateStaffRequest request, {$grpc.CallOptions? options,}) {
    return $createUnaryCall(_$createStaffMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> updateStaffMember($1.StaffMember request, {$grpc.CallOptions? options,}) {
    return $createUnaryCall(_$updateStaffMember, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> deleteStaffMember($0.DeleteStaffRequest request, {$grpc.CallOptions? options,}) {
    return $createUnaryCall(_$deleteStaffMember, request, options: options);
  }

    // method descriptors

  static final _$getStaff = $grpc.ClientMethod<$0.GetStaffRequest, $0.GetStaffResponse>(
      '/staff.StaffApi/GetStaff',
      ($0.GetStaffRequest value) => value.writeToBuffer(),
      $0.GetStaffResponse.fromBuffer);
  static final _$createStaffMember = $grpc.ClientMethod<$0.CreateStaffRequest, $0.Empty>(
      '/staff.StaffApi/CreateStaffMember',
      ($0.CreateStaffRequest value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
  static final _$updateStaffMember = $grpc.ClientMethod<$1.StaffMember, $0.Empty>(
      '/staff.StaffApi/UpdateStaffMember',
      ($1.StaffMember value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
  static final _$deleteStaffMember = $grpc.ClientMethod<$0.DeleteStaffRequest, $0.Empty>(
      '/staff.StaffApi/DeleteStaffMember',
      ($0.DeleteStaffRequest value) => value.writeToBuffer(),
      $0.Empty.fromBuffer);
}

@$pb.GrpcServiceName('staff.StaffApi')
abstract class StaffApiServiceBase extends $grpc.Service {
  $core.String get $name => 'staff.StaffApi';

  StaffApiServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetStaffRequest, $0.GetStaffResponse>(
        'GetStaff',
        getStaff_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetStaffRequest.fromBuffer(value),
        ($0.GetStaffResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateStaffRequest, $0.Empty>(
        'CreateStaffMember',
        createStaffMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateStaffRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.StaffMember, $0.Empty>(
        'UpdateStaffMember',
        updateStaffMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.StaffMember.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteStaffRequest, $0.Empty>(
        'DeleteStaffMember',
        deleteStaffMember_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DeleteStaffRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetStaffResponse> getStaff_Pre($grpc.ServiceCall $call, $async.Future<$0.GetStaffRequest> $request) async {
    return getStaff($call, await $request);
  }

  $async.Future<$0.GetStaffResponse> getStaff($grpc.ServiceCall call, $0.GetStaffRequest request);

  $async.Future<$0.Empty> createStaffMember_Pre($grpc.ServiceCall $call, $async.Future<$0.CreateStaffRequest> $request) async {
    return createStaffMember($call, await $request);
  }

  $async.Future<$0.Empty> createStaffMember($grpc.ServiceCall call, $0.CreateStaffRequest request);

  $async.Future<$0.Empty> updateStaffMember_Pre($grpc.ServiceCall $call, $async.Future<$1.StaffMember> $request) async {
    return updateStaffMember($call, await $request);
  }

  $async.Future<$0.Empty> updateStaffMember($grpc.ServiceCall call, $1.StaffMember request);

  $async.Future<$0.Empty> deleteStaffMember_Pre($grpc.ServiceCall $call, $async.Future<$0.DeleteStaffRequest> $request) async {
    return deleteStaffMember($call, await $request);
  }

  $async.Future<$0.Empty> deleteStaffMember($grpc.ServiceCall call, $0.DeleteStaffRequest request);

}
