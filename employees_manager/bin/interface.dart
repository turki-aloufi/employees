import 'management_functions.dart';
import 'dart:io';
import 'employee.dart';

printUI() {
  print("----------Welcome to our company----------");
  late var user;
  while (true) {
    print("\nplease enter your id:");
    int id = int.parse(stdin.readLineSync()!);
    user = getById(id);
    if (user is Employee) {
      break;
    }
    print(user);
  }

  print("\nWelcome ${user.name}");

  bool exit = false;
  do {
    print("\n\n----------Choose by number----------");
    print("1-Print my info");
    print("2-Add a new employee");
    print("3-Delete an existing employee");
    print("4-Update employee info");
    print("5-Print employee by id");
    print("6-Print all employees");
    print("to exit press enter");
    print("-----------------------------------");
    String option = stdin.readLineSync()!;
    switch (option) {
      case "1":
        user.printInfo();
        break;
      case "2":
        if (!user.permissions.contains("add")) {
          print("\nyou don't have the permission for this action");
          break;
        }

        print("\nenter employee name:");
        String name = stdin.readLineSync()!;
        print("enter employee birthday:");
        String birthday = stdin.readLineSync()!;

        print("enter employee job title:");
        String title = stdin.readLineSync()!;

        print("enter employee job description:");
        String jobDescription = stdin.readLineSync()!;

        print("enter employee salary:");
        double salary = double.parse(stdin.readLineSync()!);

        print("enter employee permissions:");
        Set<String> permissions = {};

        Employee emp = Employee(
            name: name,
            dateOfBirth: birthday,
            permissions: permissions,
            salary: salary,
            jobTitle: title,
            jobDescription: jobDescription);
        addPermission(emp);
        employees.add(emp);
        break;
      case "3":
        if (!user.permissions.contains("delete")) {
          print("you don't have the permission for this action");
          break;
        }
        print("enter employee id:");
        int id = int.parse(stdin.readLineSync()!);
        deleteEmployee(id);
        break;
      case "4":
        if (!user.permissions.contains("update")) {
          print("you don't have the permission for this action");
          break;
        }
        print("enter employee id:");
        int id = int.parse(stdin.readLineSync()!);
        updateEmployee(id);
        break;
      case "5":
        if (!user.permissions.contains("read")) {
          print("you don't have the permission for this action");
          break;
        }
        print("enter employee id:");
        int id = int.parse(stdin.readLineSync()!);
        printById(id);
        break;
      case "6":
        if (!user.permissions.contains("read")) {
          print("you don't have the permission for this action");
          break;
        }
        printAllEmployees();
        break;
      default:
        exit = true;
        break;
    }
  } while (!exit);
}
