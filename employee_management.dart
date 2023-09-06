// employee_management.dart
import 'employee.dart';

List<Employee> employees = [];

void addNewEmployee(
  int id,
  String fullName,
  DateTime birthday,
  String address,
  String phoneNumber,
) {
  Employee newEmployee = Employee(
    id: id,
    fullName: fullName,
    birthday: birthday,
    address: address,
    phoneNumber: phoneNumber,
  );
  employees.add(newEmployee);
}

List<Employee> getAllEmployees() {
  return employees;
}

void updateEmployee(
  int id,
  String fullName,
  DateTime birthday,
  String address,
  String phoneNumber,
) {
  for (var employee in employees) {
    if (employee.id == id) {
      employee.fullName = fullName;
      employee.birthday = birthday;
      employee.address = address;
      employee.phoneNumber = phoneNumber;
      break;
    }
  }
}

void showAllEmployees() {
  for (var employee in employees) {
    print("ID: ${employee.id}");
    print("Full Name: ${employee.fullName}");
    print("Birthday: ${employee.birthday}");
    print("Address: ${employee.address}");
    print("Phone Number: ${employee.phoneNumber}");
    print("-----------------------");
  }
}

void main() {
  addNewEmployee(1, "John Doe", DateTime(1990, 5, 15), "123 Main St", "123-456-7890");
  addNewEmployee(2, "Jane Smith", DateTime(1985, 8, 22), "456 Elm St", "987-654-3210");

  print("All Employees:");
  showAllEmployees();

  updateEmployee(1, "John Updated", DateTime(1990, 5, 15), "123 Main St Updated", "111-222-3333");
  print("\nAfter Update:");
  showAllEmployees();
}
