import 'package:calavigasa2025/models/category.dart';

class Person {
    String firstName;
    String lastName;
    String? email;
    String phoneNumber;
    Category? category;

  Person(
      {required this.firstName,
      required this.lastName,
      this.email,
      required this.phoneNumber,
      this.category});

  String getFullName() {
    return "$firstName $lastName";
  }

  @override
  String toString() {
    return 'Person{firstName: $firstName, lastName: $lastName, email: $email, phoneNumber: $phoneNumber, category: $category}';
  }
}
