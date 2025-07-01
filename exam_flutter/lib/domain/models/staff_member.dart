enum Position { unexpected, analyst, manager, designer, developer }

class StaffMember {
  final String id;
  final String firstName;
  final String lastName;
  final int wage;
  final Position position;

  StaffMember({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.wage,
    required this.position,
  });

  StaffMember copyWith({
    String? id,
    String? firstName,
    String? lastName,
    int? wage,
    Position? position,
  }) {
    return StaffMember(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      wage: wage ?? this.wage,
      position: position ?? this.position,
    );
  }
}
