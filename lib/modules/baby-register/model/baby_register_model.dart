class BabyRegisterModel {
  BabyRegisterModel({
    required this.name,
    required this.dob,
    required this.gender,
  });
  String name;
  DateTime dob;
  String gender;

  int get age {
    final today = DateTime.now();
    var age = today.year - dob.year;
    if (today.year < dob.month ||
        (today.month == dob.month && today.day < dob.day)) {
      age--;
    }
    return age;
  }

  int get ageInWeeks {
    return DateTime.now().difference(dob).inDays ~/ 7;
  }
}
