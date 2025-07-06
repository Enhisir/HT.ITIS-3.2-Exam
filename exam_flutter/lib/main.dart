import 'package:exam_flutter/domain/models/staff_member.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:exam_flutter/core/grpc_client.dart';
import 'package:exam_flutter/data/repositories/staff_repository_impl.dart';
import 'domain/repositories/staff_repository.dart';
import 'package:exam_flutter/protos/staff_api.pbgrpc.dart';
import 'package:exam_flutter/presentation/blocs/staff_list_bloc.dart';
import 'presentation/screens/staff_list_screen.dart';
import 'presentation/screens/staff_edit_screen.dart'; // если есть

void main() {
  final grpcClient = GrpcClient();
  grpcClient.init('10.0.2.2', 5001);

  final client = StaffApiClient(grpcClient.channel);
  final staffRepository = StaffRepositoryImpl();

  runApp(MyApp(staffRepository: staffRepository));
}

class MyApp extends StatelessWidget {
  final StaffRepository staffRepository;

  const MyApp({super.key, required this.staffRepository});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: staffRepository,
      child: BlocProvider(
        create: (context) => StaffListBloc(staffRepository)..add(LoadStaff()),
        child: MaterialApp(
          title: 'Staff App',
          initialRoute: StaffListScreen.routeName,
          routes: {
            StaffListScreen.routeName: (context) => const StaffListScreen(),
            StaffEditScreen.routeName: (context) {
              final staffMember = ModalRoute.of(context)!.settings.arguments as StaffMember;
              return StaffEditScreen(staffMember: staffMember);
            },
          },
        ),
      ),
    );
  }
}
