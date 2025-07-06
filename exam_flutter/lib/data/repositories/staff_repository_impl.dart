import 'package:exam_flutter/domain/models/staff_member.dart';
import 'package:exam_flutter/domain/repositories/staff_repository.dart';
import 'package:exam_flutter/protos/models.pb.dart' as grpc_models;
import 'package:exam_flutter/protos/staff_api.pbgrpc.dart' as grpc_api;

class StaffRepositoryImpl implements StaffRepository {
  // Убираем gRPC клиента, он не нужен в моковой версии
  // final grpc_api.StaffApiClient client;

  // Конструктор без параметров
  StaffRepositoryImpl();

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

  // --- Вот мок-данные ---
  final List<StaffMember> _mockStaff = [
    StaffMember(id: '1', firstName: 'Алексей', lastName: 'Петров', wage: 80000, position: Position.developer),
    StaffMember(id: '2', firstName: 'Мария', lastName: 'Смирнова', wage: 90000, position: Position.manager),
    StaffMember(id: '3', firstName: 'Игорь', lastName: 'Кузнецов', wage: 70000, position: Position.analyst),
    StaffMember(id: '4', firstName: 'Елена', lastName: 'Новикова', wage: 75000, position: Position.designer),
    StaffMember(id: '5', firstName: 'Дмитрий', lastName: 'Васильев', wage: 85000, position: Position.developer),
    StaffMember(id: '6', firstName: 'Ольга', lastName: 'Соколова', wage: 72000, position: Position.analyst),
  ];

  @override
  Future<List<StaffMember>> getStaff({Position? filter}) async {
    await Future.delayed(const Duration(milliseconds: 200)); // имитация задержки
    if (filter == null || filter == Position.unexpected) {
      return List.from(_mockStaff);
    }
    return _mockStaff.where((e) => e.position == filter).toList();
  }

  @override
  Future<void> createStaffMember(StaffMember member) async {
    await Future.delayed(const Duration(milliseconds: 200));
    _mockStaff.add(member);
  }

  @override
  Future<void> updateStaffMember(StaffMember member) async {
    await Future.delayed(const Duration(milliseconds: 200));
    final index = _mockStaff.indexWhere((e) => e.id == member.id);
    if (index != -1) {
      _mockStaff[index] = member;
    }
  }

  @override
  Future<void> deleteStaffMember(String id) async {
    await Future.delayed(const Duration(milliseconds: 200));
    _mockStaff.removeWhere((e) => e.id == id);
  }
}
