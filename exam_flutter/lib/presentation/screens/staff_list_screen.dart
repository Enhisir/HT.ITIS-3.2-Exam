import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exam_flutter/presentation/blocs/staff_list_bloc.dart';
import 'package:exam_flutter/domain/models/staff_member.dart';
import 'staff_edit_screen.dart';

class StaffListScreen extends StatelessWidget {
  static const routeName = '/staff_list';

  const StaffListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staff List')),
      body: BlocBuilder<StaffListBloc, StaffListState>(
        builder: (context, state) {
          if (state is StaffListLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is StaffListLoaded) {
            return ListView.builder(
              itemCount: state.staff.length,
              itemBuilder: (context, index) {
                final staff = state.staff[index];
                return ListTile(
                  title: Text('${staff.firstName} ${staff.lastName}'),
                  subtitle: Text('${staff.position.name}, Wage: ${staff.wage}'),
                  onTap: () {
                    Navigator.of(context).pushNamed(
                      StaffEditScreen.routeName,
                      arguments: staff,
                    );
                  },
                );
              },
            );
          } else if (state is StaffListError) {
            return Center(child: Text('Error: ${state.message}'));
          } else {
            return const SizedBox();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.refresh),
        onPressed: () => context.read<StaffListBloc>().add(LoadStaff()),
      ),
    );
  }
}
