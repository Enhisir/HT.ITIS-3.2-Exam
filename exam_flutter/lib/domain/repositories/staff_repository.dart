import 'package:exam_flutter/domain/models/staff_member.dart';

abstract class StaffRepository {
  Future<List<StaffMember>> getStaff({Position? filter});
  Future<void> createStaffMember(StaffMember member);
  Future<void> updateStaffMember(StaffMember member);
  Future<void> deleteStaffMember(String id);
}