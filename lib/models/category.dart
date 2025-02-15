class Category{
  final String code;
  final String name;

  Category({required this.code, required this.name});

  @override
  String toString() {
    return 'Category{code: $code, name: $name}';
  }
}