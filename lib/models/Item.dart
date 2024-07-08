class Item {
  String imgPath;
  double price;
    String location ;
  Item({required this.imgPath, required this.price,  this.location="main branch"});
}

List<Item> items = [


  Item(imgPath: "assets/img/tree.jpeg", price: 17.99,location:"charguia"),
  Item(imgPath: "assets/img/sec6.png", price: 12.99,location:"sousse"),
  Item(imgPath: "assets/img/sky.jpg", price: 15.99,location:"bizert"),
  Item(imgPath: "assets/img/tree.jpeg", price: 99.99,location:"marsa"),
];