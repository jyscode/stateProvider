class StudentModel {
  final String name;
  final int age;

  StudentModel({
    required this.name,
    required this.age,
  });

  int ageChange(int age){
    return age+1;
  }
}
