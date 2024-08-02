import 'initial_data.dart';
import 'management_functions.dart';

void main() {
  addInitialData();
  printAllEmployees();
  addEmployee(
      name: "faisal",
      dateOfBirth: "2002-1-2",
      salary: 12000,
      permissions: {"add", "delete"},
      jobTitle: "backend develooper",
      jobDescription: "manage backend enviroment");
  printAllEmployees();
  printById(1);
  deleteEmployee(2);
  printAllEmployees();
}
