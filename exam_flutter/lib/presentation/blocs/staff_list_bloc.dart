import 'package:bloc/bloc.dart';
import '../../domain/models/staff_member.dart';
import '../../domain/repositories/staff_repository.dart';

abstract class StaffListEvent {}

class LoadStaff extends StaffListEvent {
  final Position? filter;
  LoadStaff({this.filter});
}

class DeleteStaff extends StaffListEvent {
  final String id;
  DeleteStaff(this.id);
}

abstract class StaffListState {}

class StaffListInitial extends StaffListState {}

class StaffListLoading extends StaffListState {}

class StaffListLoaded extends StaffListState {
  final List<StaffMember> staff;
  StaffListLoaded(this.staff);
}

class StaffListError extends StaffListState {
  final String message;
  StaffListError(this.message);
}

class StaffListBloc extends Bloc<StaffListEvent, StaffListState> {
  final StaffRepository repository;

  StaffListBloc(this.repository) : super(StaffListInitial()) {
    on<LoadStaff>((event, emit) async {
      emit(StaffListLoading());
      try {
        final staff = await repository.getStaff(filter: event.filter);
        emit(StaffListLoaded(staff));
      } catch (e) {
        emit(StaffListError(e.toString()));
      }
    });

    on<DeleteStaff>((event, emit) async {
      try {
        await repository.deleteStaffMember(event.id);
        final staff = await repository.getStaff();
        emit(StaffListLoaded(staff));
      } catch (e) {
        emit(StaffListError(e.toString()));
      }
    });
  }
}
