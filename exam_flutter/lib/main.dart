
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:exam_flutter/core/grpc_client.dart';
import 'package:exam_flutter/data/repositories/staff_repository_impl.dart';
import 'domain/repositories/staff_repository.dart';
import 'package:exam_flutter/protos/staff_api.pbgrpc.dart';
import 'package:exam_flutter/presentation/blocs/staff_list_bloc.dart';
import 'presentation/screens/staff_list_screen.dart';

void main() {
  final grpcClient = GrpcClient();
  grpcClient.init('localhost', 5222);

  final client = StaffApiClient(grpcClient.channel);
  final staffRepository = StaffRepositoryImpl(client);

  runApp(MyApp(staffRepository));
}

class MyApp extends StatelessWidget {
  final StaffRepository staffRepository;

  const MyApp(this.staffRepository, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Staff App',
      home: BlocProvider(
        create: (_) => StaffListBloc(staffRepository)..add(LoadStaff()),
        child: StaffListScreen(),
      ),
    );
  }
}