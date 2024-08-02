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
    print("Permissions: ${emp.permissions}");
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
  return("\nEmployee is not found");
}

printById(int id) {
  for (var emp in employees) {
    if (id == emp.id) {
      print("\n----------Employee info----------");
      print("Id: $id");
      print("Name: ${emp.name}");
      print("Date of Birth: ${emp.dateOfBirth}");
      print("Salary: ${emp.salary}");
      print("Permissions: ${emp.permissions}");
      print("Job title: ${emp.jobTitle}");
      print("JobDescription: ${emp.jobDescription}");
      print("---------------------------------");

      return;
    }
  }
  print("\nEmployee is not found");
}

deleteEmployee(int id) {
  var emp = getById(id);
  if (employees.remove(emp)) {
    print("\ndeleted successfully");
  } else {
    print("\nyou should enter an existing permission");
  }
}

updateEmployee(int id) {
  var emp = getById(id);
  String choice;
  bool loop = true;
  do {
    print("\n\n----------What do you want to update----------");
    print("1-Salary");
    print("2-Permissions");
    print("3-Job description");
    choice = stdin.readLineSync()!;
    if (choice != "1" && choice != "2" && choice != "3") {
      print("\nplease choose by number: ");
      continue;
    }
    loop = false;
  } while (loop);

  switch (choice) {
    case "1":
      print("\nenter the new salary:");
      double newSalary = double.parse(stdin.readLineSync()!);
      emp.salary = newSalary;
      print("\nThe new salary is: ${emp.salary}");
      break;
    case "2":
      bool exit = false;
      do {
        print("\n----------Choose by number----------");
        print("1-add new permission");
        print("2-delete permission");
        print("to exit press enter");
        print("-----------------------------------");

        String option = stdin.readLineSync()!;
        switch (option) {
          case "1":
            addPermission(emp);
            break;
          case "2":
            deletePermission(emp);
            break;
          default:
            exit = true;
        }
      } while (!exit);

      break;
    case "3":
      print("\nenter the new job description:");
      String newJobDescription = stdin.readLineSync()!;
      emp.jobDescription = newJobDescription;
      print("\nThe new job description is: ${emp.jobDescription}");
      break;
  }
}

addPermission(Employee emp) {
  late String input;
  do {
    print("\nenter a new permission:");
    String newPermission = stdin.readLineSync()!;
    emp.permissions.add(newPermission);
    print("\nto add another permission press 1,\nto exit press enter.");
    input = stdin.readLineSync()!;
  } while (input == "1");
}

deletePermission(Employee emp) {
  late String input;
  do {
    print("\nwhat permission do you want to delete?");
    print(emp.permissions);
    String permission = stdin.readLineSync()!;
    if (emp.permissions.remove(permission)) {
      print("\ndeleted successfully");
    } else {
      print("\nyou should enter an existing permission");
    }
    print("\n\nto delete another permission press 1,\nto exit press enter.");
    input = stdin.readLineSync()!;
  } while (input == "1" && emp.permissions.isNotEmpty);
}
