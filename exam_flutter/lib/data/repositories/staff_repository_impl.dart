import 'package:exam_flutter/domain/models/staff_member.dart';
import 'package:exam_flutter/domain/repositories/staff_repository.dart';
import 'package:exam_flutter/protos/models.pb.dart' as grpc_models;
import 'package:exam_flutter/protos/staff_api.pbgrpc.dart' as grpc_api;

class StaffRepositoryImpl implements StaffRepository {
  final grpc_api.StaffApiClient client;

  StaffRepositoryImpl(this.client);

  Position _mapPosition(grpc_models.Position p) {
    switch (p) {
      case grpc_models.Position.Analyst:
        return Position.analyst;
      case grpc_models.Position.Manager:
        return Position.manager;
      case grpc_models.Position.Designer:
        return Position.designer;
      case grpc_models.Position.Developer:
        return Position.developer;
      default:
        return Position.unexpected;
    }
  }

  grpc_models.Position _mapGrpcPosition(Position p) {
    switch (p) {
      case Position.analyst:
        return grpc_models.Position.Analyst;
      case Position.manager:
        return grpc_models.Position.Manager;
      case Position.designer:
        return grpc_models.Position.Designer;
      case Position.developer:
        return grpc_models.Position.Developer;
      default:
        return grpc_models.Position.Unexpected;
    }
  }

  StaffMember _fromGrpc(grpc_models.StaffMember m) => StaffMember(
    id: m.id,
    firstName: m.firstName,
    lastName: m.lastName,
    wage: m.wage,
    position: _mapPosition(m.position),
  );

  grpc_models.StaffMember _toGrpc(StaffMember m) => grpc_models.StaffMember(
    id: m.id,
    firstName: m.firstName,
    lastName: m.lastName,
    wage: m.wage,
    position: _mapGrpcPosition(m.position),
  );

  @override
  Future<List<StaffMember>> getStaff({Position? filter}) async {
    final request = grpc_api.GetStaffRequest();
    if (filter != null) {
      request.positionFilter = _mapGrpcPosition(filter);
    }
    final response = await client.getStaff(request);
    return response.members.map(_fromGrpc).toList();
  }

  @override
  Future<void> createStaffMember(StaffMember member) async {
    final request = grpc_api.CreateStaffRequest(
      firstName: member.firstName,
      lastName: member.lastName,
      wage: member.wage,
      position: _mapGrpcPosition(member.position),
    );
    await client.createStaffMember(request);
  }

  @override
  Future<void> updateStaffMember(StaffMember member) async {
    await client.updateStaffMember(_toGrpc(member));
  }

  @override
  Future<void> deleteStaffMember(String id) async {
    final request = grpc_api.DeleteStaffRequest(staffId: id);
    await client.deleteStaffMember(request);
  }
}
