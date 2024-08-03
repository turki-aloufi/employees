import 'employee.dart';
import 'management_functions.dart';

addInitialData() {
  Employee emp1 = Employee.initial(
      id: 1,
      name: "Abdullah",
      dateOfBirth: "2000-01-01",
      permissions: {},
      salary: 9000,
      jobTitle: "flutter developer",
      jobDescription:
          "builds and maintains mobile and web applications using the Flutter framework.");
  Employee emp2 = Employee.initial(
      id: 0002,
      name: "Ahmed",
      dateOfBirth: "1990-07-09",
      permissions: {},
      salary: 15000,
      jobTitle: "Penetration tester",
      jobDescription:
          " identifies and exploits security vulnerabilities in systems and networks to enhance cybersecurity.");
  Employee emp3 = Employee.initial(
      id: 0003,
      name: "Khalid",
      dateOfBirth: "1980-02-15",
      permissions: {"add", "delete", "update"},
      salary: 20000,
      jobTitle: "Project manager",
      jobDescription:
          "Plans, executes, and oversees projects, ensuring they meet goals, deadlines, and budgets.");
  Employee emp4 = Employee.initial(
      id: 0004,
      name: "Muhammad",
      dateOfBirth: "1987-11-26",
      permissions: {"add", "delete", "update", "read"},
      salary: 150000,
      jobTitle: "HR ",
      jobDescription:
          "Manage recruitment, employee relations, benefits, compliance, and organizational development.");
  employees.add(emp1);
  employees.add(emp2);
  employees.add(emp3);
  employees.add(emp4);
}
