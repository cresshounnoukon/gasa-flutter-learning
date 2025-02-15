

import 'package:calavigasa2025/models/category.dart';

class ServiceCategory {
  final List<Category> categories = [

    Category(code: "VIP", name: "Very Important Personality"),
    Category(code: "STD", name: "Standard"),
    Category(code: "FM", name: "Famille"),
    Category(code: "WRK", name: "Professional "),
  ];

  List<Category> all() {
    return  categories;
  }

  Category add(Category category) {
    categories.add(category);
    return category;
  }

  Category? edit(Category category) {
    // TODO
    return null;
  }

  void delete(Category category) {
    categories.remove(category);
  }

  List<Category> search(String keyword) {
    return [];

  }
}
