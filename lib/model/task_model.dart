class Task {
  final int id;
  final String name;
  final String dname;

  Task({required this.id, required this.name, required this.dname});

  Map<String, dynamic> toMap() {
    return ({
      'id': id,
      'name': name,
      'dname': dname,
    });
  }
}
