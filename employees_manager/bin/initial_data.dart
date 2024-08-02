import 'employee.dart';
import 'management_functions.dart';

addInitialData() {
  Employee emp1 = Employee.initial(
      id: 0001,
      name: "Turki",
      dateOfBirth: "2000-01-01",
      permissions: {"view personal info"},
      salary: 10000,
      jobTitle: "Junior flutter developer",
      jobDescription:
          "Collaborate with cross-functional teams to define, design, and ship new features to mobile apps.");
  Employee emp2 = Employee.initial(
      id: 0002,
      name: "Ahmed",
      dateOfBirth: "2001-07-09",
      permissions: {"add", "delete", "update"},
      salary: 10000,
      jobTitle: "Penetration tester",
      jobDescription:
          "Collaborate with cross-functional teams to define, design, and ship new features to mobile apps.");
  Employee emp3 = Employee.initial(
      id: 0003,
      name: "Khalid",
      dateOfBirth: "2001-07-09",
      permissions: {"add", "delete", "update"},
      salary: 10000,
      jobTitle: "project manager",
      jobDescription:
          "Collaborate with cross-functional teams to define, design, and ship new features to mobile apps.");
  Employee emp4 = Employee.initial(
      id: 0004,
      name: "Muhammad",
      dateOfBirth: "2001-07-09",
      permissions: {"add", "delete", "update"},
      salary: 10000,
      jobTitle: "HR ",
      jobDescription:
          "Collaborate with cross-functional teams to define, design, and ship new features to mobile apps.");
  employees.add(emp1);
  employees.add(emp2);
  employees.add(emp3);
  employees.add(emp4);
}
