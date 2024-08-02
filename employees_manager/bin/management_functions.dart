import 'employee.dart';
import 'dart:io';

List<Employee> employees = [];

printAllEmployees() {
  for (var emp in employees) {
    print("\n----------Employee info----------");
    print("Id: ${emp.id}");
    print("Name: ${emp.name}");
    print("Date of birth: ${emp.dateOfBirth}");
    print("Salary: ${emp.salary}");

    print("Job title: ${emp.jobTitle}");
    print("Job description: ${emp.jobDescription}");
  }
  print("---------------------------------");
}

addEmployee(
    {required String name,
    required String dateOfBirth,
    required double salary,
    required Set<String> permissions,
    required String jobTitle,
    required String jobDescription}) {
  Employee emp = Employee(
      name: name,
      dateOfBirth: dateOfBirth,
      permissions: permissions,
      salary: salary,
      jobTitle: jobTitle,
      jobDescription: jobDescription);
  employees.add(emp);
}

getById(int id) {
  for (var emp in employees) {
    if (id == emp.id) {
      return emp;
    }
  }
  print("Employee is not found");
}

printById(int id) {
  for (var emp in employees) {
    if (id == emp.id) {
      print("----------My info----------");
      print("Id: $id");
      print("Name: ${emp.name}");
      print("Date of Birth: ${emp.dateOfBirth}");
      print("Salary: ${emp.salary}");
      print("Permissions: ${emp.permissions}");
      print("Job title: ${emp.jobTitle}");
      print("JobDescription: ${emp.jobDescription}");
      return;
    }
  }
  print("Employee is not found");
}

deleteEmployee(int id) {
  var emp = getById(id);
  employees.remove(emp);
}

updateEmployee(int id) {
  var emp = getById(id);
  String choice;
  bool loop = true;
  do {
    print("What do you want to update: ");
    print("1-Salary");
    print("2-Permissions");
    print("3-Job description");
    choice = stdin.readLineSync()!;
    if (choice != "1" && choice != "2" && choice != "3") {
      print("please choose by number: ");
      continue;
    }
    loop = false;
  } while (loop);

  switch (choice) {
    case "1":
      print("enter the new salary:");
      double newSalary = double.parse(stdin.readLineSync()!);
      emp.salary = newSalary;
      print("The new salary is: ${emp.salary}");
      break;
    case "2":
      Set<String> permissions = {};
      late String input;
      do {
        print("enter a new permission:");
        String newPermission = stdin.readLineSync()!;
        emp.permissions = newPermission;
        permissions.add(newPermission);
        print("to add another permission press 1,\nto exit press enter.");
        input = stdin.readLineSync()!;
      } while (input == "1");
      break;
    case "3":
      print("enter the new job description:");
      String newJobDescription = stdin.readLineSync()!;
      emp.jobDescription = newJobDescription;
      print("The new job description is: ${emp.jobDescription}");
      break;
  }
}
