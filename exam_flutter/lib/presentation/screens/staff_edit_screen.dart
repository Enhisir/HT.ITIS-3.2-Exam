import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exam_flutter/presentation/blocs/staff_list_bloc.dart';
import 'package:exam_flutter/domain/models/staff_member.dart';

class StaffEditScreen extends StatefulWidget {
  static const routeName = '/staff_edit';

  final StaffMember staffMember;

  const StaffEditScreen({required this.staffMember, Key? key}) : super(key: key);

  @override
  State<StaffEditScreen> createState() => _StaffEditScreenState();
}

class _StaffEditScreenState extends State<StaffEditScreen> {
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController wageController;
  late Position position;

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController(text: widget.staffMember.firstName);
    lastNameController = TextEditingController(text: widget.staffMember.lastName);
    wageController = TextEditingController(text: widget.staffMember.wage.toString());
    position = widget.staffMember.position;
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    wageController.dispose();
    super.dispose();
  }

  void save() {
    final updated = widget.staffMember.copyWith(
      firstName: firstNameController.text,
      lastName: lastNameController.text,
      wage: int.tryParse(wageController.text) ?? widget.staffMember.wage,
      position: position,
    );

    // Обновляем через bloc (через событие)
    context.read<StaffListBloc>().add(UpdateStaffMember(updated));
    Navigator.of(context).pop();
  }

  void delete() {
    context.read<StaffListBloc>().add(DeleteStaffMember(widget.staffMember.id));
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Staff'),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: delete,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: firstNameController, decoration: const InputDecoration(labelText: 'First Name')),
            TextField(controller: lastNameController, decoration: const InputDecoration(labelText: 'Last Name')),
            TextField(controller: wageController, decoration: const InputDecoration(labelText: 'Wage'), keyboardType: TextInputType.number),
            DropdownButton<Position>(
              value: position,
              onChanged: (val) {
                if (val != null) setState(() => position = val);
              },
              items: Position.values.map((p) {
                return DropdownMenuItem(value: p, child: Text(p.name));
              }).toList(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: save, child: const Text('Save')),
          ],
        ),
      ),
    );
  }
}
