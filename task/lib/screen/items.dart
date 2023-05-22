class item {
  String price;
  String name;
  String image;

  item({required this.price, required this.name, required this.image});

  tomap(String, dynamic) {
    var m1 = {'price': price, 'name': name, 'image': image};
    return m1;
  }

  @override
  String toString() {
    return "price=$price,name=$name,image=$image";
  }
}
