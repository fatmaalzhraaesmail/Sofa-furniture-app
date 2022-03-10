//import 'package:flutter/material.dart';
//import 'package:sofa_furniture_app/productDetail.dart';
//import 'product.dart';
//class NewProductsItems extends StatelessWidget {
//  const NewProductsItems({
//
//    this.
//});
//  final int itemIndex;
//  final Product product;
//  final Function press;
//  @override
//  Widget build(BuildContext context) {
//    return InkWell(
//      onTap: (){
//        Navigator.of(context).push( MaterialPageRoute(builder: (context){
//          return ProductDetailsScreen(NewProducts());
//        }),);
//      },
//      child: Padding(
//        padding: const EdgeInsets.only(right: 15,left: 10),
//        child: Container(
////           width: 180,
//          height: 250,
//          child: Stack(
//            children: [
//
//              Container(
//                margin: EdgeInsets.only(top: 7),
//                width: 185,
//                height: 200,
//                decoration: BoxDecoration(
//                  color: Color.fromRGBO(143, 172, 168, 1),
//                  borderRadius: BorderRadius.circular(
//
//                      15),
//
//
//                ),
//              ),
//              Positioned(
//                right: 12,
//                child: Container(
////               width: 20,
//                  padding: EdgeInsets.symmetric(
//                      horizontal: 17, vertical: 5),
//                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(
//                        15),
//                    color: Color.fromRGBO(66, 98, 94, 1),
//                  ),
//                  child: Text(
//                    'New', style: TextStyle(
//                      color: Colors.white,fontWeight: FontWeight.bold),),
//                ),
//              ),
//              Positioned(
//                  top: 25,
//                  left: 10,
//                  child: Text('${newProducts.title}',style: TextStyle(color:Color.fromRGBO(66, 98, 100, 1),fontSize: 20,fontWeight: FontWeight.bold ),)),
//              Positioned(
//                  top: 60,
//                  left: 10,
//                  child: Text('${newProducts.price}',style: TextStyle(color:Color.fromRGBO(66, 98, 100, 1),fontSize: 20,fontWeight: FontWeight.w800 ),)),
//              Positioned(
//                  right: 12,
//                  top: 60,
//                  child: Row(
//                    children: [
//                      Icon(Icons.star,color: Color.fromRGBO(66, 98, 100, 1),),
//                      SizedBox(width: 5,),
//                      Text('${newProducts.rate}',style: TextStyle(color:Color.fromRGBO(66, 98, 100, 1),fontSize: 16,fontWeight: FontWeight.w800 ),)
//                    ],
//                  )),
//              Positioned(
//                top: 90,
//                left: 10,
//                child:Container(
//                  alignment: Alignment.center,
//                  width: 150,
//                  height: 150,
//
////                     width: double.infinity,
////                     height: double.infinity,
//                  decoration: BoxDecoration(
////                         color: Color(0xff839793),
//                    color: Colors.transparent,
//                    image: DecorationImage(
//
//                        fit: BoxFit.cover,
//                        image:AssetImage('${newProducts.newProductsItems![0]}')) ,
//                  ),
//                ),
//
//              ),
//            ],
//          ),
//        ),
//      ),
//    );
//  }
//}
