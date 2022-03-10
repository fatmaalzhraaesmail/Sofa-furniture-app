

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sofa_furniture_app/Homepage.dart';
import 'package:sofa_furniture_app/colors.dart';
import 'package:sofa_furniture_app/product.dart';
import 'package:sofa_furniture_app/quantity.dart';
class ProductDetailsScreen extends StatefulWidget {
  final NewProducts newProducts;
  ProductDetailsScreen(this.newProducts

);

  @override

  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  List colors=[Colors.green,Colors.blue,Colors.yellow,Colors.blueGrey,Colors.grey[700],];
  int currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:  Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title:Text('Sofa',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 21),),
        leading: GestureDetector(
          onTap:(){
            Navigator.push( context, MaterialPageRoute(builder: (context) => MyHomePage(),));
          } ,
            child: Icon(Icons.arrow_back,color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: Icon(Icons.shopping_bag,size: 25,color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                child: Container(
                  height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
//                         color: Color(0xff839793),
                  color: Colors.transparent,
                  image: DecorationImage(

                      fit: BoxFit.cover,
//                   image:AssetImage('assets/images/f12.jpg',))) ,
                     image:AssetImage('${widget.newProducts.newProductsItems![currentIndex]}'),))),
//                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15,left: 22,right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Blue Sofa',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text('\$65',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),

                  ],
                ),
              ),

             Padding(
               padding: const EdgeInsets.only(top: 15,left: 22,right: 22),
               child: Text('this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed this can be changed',
                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.grey[600]),
               ),
             ),
//              ListOfColors(),
             Padding(
               padding: const EdgeInsets.only(top: 5,left: 22,right: 22),
//               child: ColorPalatte(),
                child: Container(
//      height: 100,
                   child:  Row(
                     children: [
                       Text('Color',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                       SizedBox(width: 15,),
                       Row(
                         children: [
                           Container(
                             height: 60,
                             width: 250,
                             child: ListView.builder(
                                 scrollDirection: Axis.horizontal,
                                 itemCount: colors.length,
                                 itemBuilder: (context,index)=> InkWell(
                                   borderRadius: BorderRadius.circular(40),
                                   onTap: (){
                                   setState(() {
                                     currentIndex=index;
                                   });
                                   },
                                   child: Container(
                                     margin: EdgeInsets.symmetric(horizontal: 10),
                                     padding: EdgeInsets.all(3),
                                     height: 30,
                                     width: 30,
                                     decoration: BoxDecoration(
                                       shape: BoxShape.circle,
                                       border: Border.all(
                                           color: Colors.grey
                                       ),
                                     ),
                                     child: Container(
                                       decoration: BoxDecoration(
                                         shape: BoxShape.circle,
                                         color: colors[index],
                                       ),
                                     ),
                                   ),
                                 )),
                           ),
                         ],
                       )

                     ],
                   ),
                 ),

             ),
              Padding(
                padding: const EdgeInsets.only(top: 5,left: 22,right: 22),
                child: Quantity(),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 30,left: 45,right: 30,bottom: 30),
                child: RaisedButton(
                  color: Color.fromRGBO(143, 171, 162, 1),
                  onPressed:() {},
                  shape: RoundedRectangleBorder(

                    side: BorderSide(color: Colors.grey.withOpacity(0.5)),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 55,vertical: 13),
                    child: Text('Add To Card',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,letterSpacing: 1),),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 45,right: 30,bottom: 30),
                child: RaisedButton(
                  color: Color.fromRGBO(66, 98, 94, 1),
                  onPressed:() {},
                  shape: RoundedRectangleBorder(

                    side: BorderSide(color: Colors.grey.withOpacity(0.5)),
                    borderRadius:
                    BorderRadius.all(Radius.circular(20)),
                  ),
                  child:Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 73,vertical: 13),
                    child: Text('Buy Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white,letterSpacing: 1),),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
//  Widget color(BuildContext context, index){
//    return InkWell(
//      borderRadius: BorderRadius.circular(40),
//      onTap: (){
//
//      },
//      child: Container(
//        margin: EdgeInsets.symmetric(horizontal: 10),
//        padding: EdgeInsets.all(3),
//        height: 30,
//        width: 30,
//        decoration: BoxDecoration(
//          shape: BoxShape.circle,
//          border: Border.all(
//              color: Colors.grey
//          ),
//        ),
//        child: Container(
//          decoration: BoxDecoration(
//            shape: BoxShape.circle,
//            color: colors[index],
//          ),
//        ),
//      ),
//    );
//  }

}
