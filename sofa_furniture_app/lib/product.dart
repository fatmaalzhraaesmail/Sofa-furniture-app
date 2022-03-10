import 'package:flutter/material.dart';
class Product{
  List? products=[];
  Product({this.products});
  static List< Product> GenerateProduct() {
  return [
    Product(
      products: [
        'assets/images/f10.jpg',
        'assets/images/f2.jpg',
        'assets/images/f3.jpg',
        'assets/images/f4.jpg',


      ],
    ),
    Product(
      products: [
        'assets/images/f5.jpg',
        'assets/images/f6.jpg',
        'assets/images/f7.jpg',
        'assets/images/f8.jpg',


      ],
    ),
    Product(
      products: [
        'assets/images/f17.jpg',
        'assets/images/f10.jpg',
        'assets/images/f11.jpg',
        'assets/images/f12.jpg',


      ],
    ),
    Product(
      products: [
        'assets/images/f21.jpg',
        'assets/images/f14.jpg',
        'assets/images/f15.jpg',
        'assets/images/f16.jpg',


      ],
    ),
    Product(
      products: [
        'assets/images/f17.jpg',
        'assets/images/f18.jpg',
        'assets/images/f19.jpg',
        'assets/images/f20.jpg',


      ],
    ),

  ];
  }
}
class NewProducts{
  String? title;
  String? price;
  String? rate;
  List<String>? newProductsItems=[];
  NewProducts({this.title,this.price,this.rate,this.newProductsItems});

}
List< NewProducts> GenerateNewProduct =[
  NewProducts(
      title: 'Green Chaire',
      price: '\$ 65',
      rate: '4.9',
      newProductsItems: ['assets/images/imgp.png','assets/images/imgp1.png','assets/images/imgp2.png','assets/images/imgp3.png','assets/images/imgp3.png']

  ),
  NewProducts(
      title: 'Blue Chaire',
      price: '\$ 30',
      rate: '3.8',
      newProductsItems: ['assets/images/imgp1.png','assets/images/imgp2.png','assets/images/imgp.png','assets/images/imgp5.png','assets/images/imgp3.png']

  ),
  NewProducts(
      title: 'yellow Chaire',
      price: '\$ 77',
      rate: '4.9',
      newProductsItems: ['assets/images/imgp.png','assets/images/imgp6.png','assets/images/imgp7.png','assets/images/imgp.png','assets/images/imgp3.png',]

  ),
  NewProducts(
      title: 'red Chaire',
      price: '\$ 15',
      rate: '2.9',
      newProductsItems: ['assets/images/imgp7.png','assets/images/imgp.png','assets/images/imgp6.png','assets/images/imgp4.png','assets/images/imgp3.png',]

  ),
];