void main() {
  List magazin = [
    Product("8271", "Monitor"),
    Product("8662", "iPad"),
    Product("0979", "Mac Book"),
    Product("1231", "iPod"),
    Product("8877", "iPhone")
  ];

  Product product1 = Product("0979", "Mac Book Pro");
  Product product2 = Product("8665", "iPad 12.9");

  if (magazin.contains(product1) && magazin.contains(product2)) {
    print("Ikkala mahsulot ham mavjud!");
  } else if (magazin.contains(product2)) {
    print("2- mahsulot bor!");
  } else if (magazin.contains(product1)) {
    print("1-mahsulot bor!");
  } else {
    print("Bu mahsulotlar do'konda yo'q!");
  }
}

class Product {
  var id;
  var name;

  Product(this.id, this.name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Product &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
