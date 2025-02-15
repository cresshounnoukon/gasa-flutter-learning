import 'package:calavigasa2025/models/person.dart';

class ServicePerson {
  final List<Person> persons = [
    Person(firstName: "FRANCK", lastName: "DAGAN", phoneNumber: "+22901345678"),
    Person(
        firstName: "LAZARE", lastName: "SEHOEUTO", phoneNumber: "+22901305678"),
    Person(
        firstName: "DERRICK",
        lastName: "LE BON PETIT",
        phoneNumber: "+229013065678"),
  ];

  List<Person> all() {
    return persons;
  }

  Person add(Person Person) {
    persons.add(Person);
    return Person;
  }

  Person? edit(Person Person) {
    // TODO
    return null;
  }

  void delete(Person Person) {
    persons.remove(Person);
  }

  List<Person> search(String keyword) {
    persons
        .where((element) => element.getFullName().contains(keyword))
        .toList();
    return [];
  }
}
