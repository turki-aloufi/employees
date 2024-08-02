import 'dart:math';

class Employee {
  Employee(
      {required this.name,
      required this.dateOfBirth,
      required this.permissions,
      required this.salary,
      required this.jobTitle,
      required this.jobDescription}) {
    id = Random().nextInt(10000);
  }
  Employee.initial(
      {required this.id,
      required this.name,
      required this.dateOfBirth,
      required this.permissions,
      required this.salary,
      required this.jobTitle,
      required this.jobDescription});
  late int id;
  late String name;
  late String dateOfBirth;
  late double salary;
  late Set<String> permissions;
  late String jobTitle;
  late String jobDescription;

  printInfo() {
    print("\n----------My info----------");
    print("Id: $id");
    print("Name: $name");
    print("Date of Birth: $dateOfBirth");
    print("Salary: $salary");
    print("Permissions: $permissions");
    print("Job title: $jobTitle");
    print("JobDescription: $jobDescription");
    print("---------------------------");
  }
}
