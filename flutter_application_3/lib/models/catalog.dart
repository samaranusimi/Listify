class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.color,
    required this.image});
}

final products = [
  Item(
      id: "01",
      name: "Macbook Air",
      desc: "M1 chip",
      price: 888,
      color: "#33505a",
      image:
          'https://techcrunch.com/wp-content/uploads/2020/11/2020-11-16-074517497.jpg')
];
