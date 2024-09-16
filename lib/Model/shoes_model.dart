class Shoes {
  String imgpath;
  String title;
  bool istrending;
  double price;

  Shoes(
      {required this.imgpath,
      required this.istrending,
      required this.price,
      required this.title});
}

List<Shoes> Shoe = [
  Shoes(
      imgpath: "assets/sneaker.png.png",
      istrending: false,
      price: 499.0,
      title: "Nike Air Max 200"),
  Shoes(
      imgpath: "assets/men.png",
      istrending: true,
      price: 999.0,
      title: "Sparx Casual Shoes"),
  Shoes(
      imgpath: "assets/men2.png",
      istrending: true,
      price: 199.0,
      title: "running shoes")
];
